package com.dentrix.api.samples.jdbctestapp;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Vector; //obsolete, but will suite the needs of this test.

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JList;
import javax.swing.JTextField;
import javax.swing.table.AbstractTableModel;
//import javax.swing.ListModel;
import javax.swing.DefaultListModel;

import java.text.MessageFormat;

//import java.io.*;
//import ctree.jdbc.*;

/**
 * The original author
 * @author mgubler
 *
 * @author Cyrus <cyrus@mesasix.com>
 */


public class JDBCTestApp extends JFrame {

    // CGG The constants below are my additon to this class so that I will not input everytime I will test it.

    /**
     * CGG
     * The usual name of the server is the name of the workstation where it is installed or 'localhost'.
     * <p>
     * In this case, my computer's name is AKAM-APPS,
     */
    private static final String SERVER = "AKAM-APPS";

    /**
     * CGG
     * The API accounts given by the Detrix, but it should be registered first on the system before
     * it will work on the API.
     * <p>
     * The instruction in the manual is very clear but I do not have a successful registration of the API
     * account. The possible output of this program is, it will determine the database as given in the example
     * below but after using the username and password for the user, it will deny and it will terminate.
     */

    private static final String USERNAME = "vscmLRed";
    private static final String PASSWORD = "SPCPvsVna";

    JTextField serverField;
    JTextField userField;
    JTextField passField;
    JTextField queryField;
    JList<String> connectType;

    QueryTableModel qtm;
    String Connect = "jdbc:odbc:DSN=c-treeACE ODBC Driver;host={0};UID={1};PWD={2};Database=DentrixSQL;port=6597";
    String JDBCConnect = "jdbc:ctree:6597@{0}:DentrixSQL";

    public JDBCTestApp() {
        super("Database Test Frame");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setSize(1000, 720);

        qtm = new QueryTableModel();
        JTable table = new JTable(qtm);
        JScrollPane scrollpane = new JScrollPane(table);
        JPanel p1 = new JPanel();
        // p1.setLayout(new GridLayout(5,3));
        p1.setLayout(new GridLayout(7, 2));
        p1.add(new JLabel("Server Name:"));
        p1.add(serverField = new JTextField());
        serverField.setText(SERVER);


        p1.add(new JLabel("User Name:"));
        p1.add(userField = new JTextField());
        userField.setText(USERNAME);

        p1.add(new JLabel("Password:"));
        p1.add(passField = new JTextField());
        passField.setText(PASSWORD);

        p1.add(new JLabel("Enter your query: "));
        p1.add(queryField = new JTextField());

        /**
         * CGG
         * I just found this query interesting but not really at all. :-)
         * This is only for testing if I will get some output.
         */

        final String query = "select * from admin.v_payment_types";

        queryField.setText(query);

        p1.add(new JLabel("Connection Method:"));
        DefaultListModel<String> list = new DefaultListModel<String>();
        list.addElement("ODBC");
        list.addElement("JDBC");

        p1.add(connectType = new JList(list));
        connectType.setSelectedIndex(0);
        connectType.setSelectionMode(NORMAL);
        p1.add(new JLabel(""));
        JButton jb = new JButton("GO!");
        jb.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                String connectionString;
                if (connectType.getSelectedValue() == "JDBC") {
                    System.err.println("Connecting via JDBC\n");
                    connectionString = MessageFormat.format(JDBCConnect, serverField.getText(), userField.getText(),
                            passField.getText());
                } else {
                    System.err.println("Connecting via ODBC\n");
                    connectionString = MessageFormat.format(Connect, serverField.getText(), userField.getText(),
                            passField.getText());
                }
                // System.err.print(connectionString + "\n" );

                qtm.setConnectionString(connectionString);
                qtm.setQuery(queryField.getText().trim());
            }
        });
        p1.add(jb);
        getContentPane().add(p1, BorderLayout.NORTH);
        getContentPane().add(scrollpane, BorderLayout.CENTER);
    }

    /**
     * @param args the command line argument
     */
    public static void main(String args[]) {
        JDBCTestApp tt = new JDBCTestApp();
        tt.setVisible(true);
    }
}

class QueryTableModel extends AbstractTableModel {
    Vector cache; // obsolete, but serves its need for now.

    int colCount;

    String[] headers;

    Connection db;

    Statement statement;

    String currentConnectString;

    Boolean jdbc_available = true;

    public QueryTableModel() {
        cache = new Vector();
        // new sun.jdbc.odbc.JdbcOdbcDriver(); //load windows jdbc drivers

        // CGG ^^^ The line commented above were modified to run in the new Java version. I read that they removed the old way.

        // CGG Try-catch statement were added also to fix its errors.
        try {
            // Load the JDBC-ODBC bridge driver
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        } catch (ClassNotFoundException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        try {
            // attempt load of ctree JDBC driver
            Class.forName("ctree.jdbc.ctreeDriver");
        } catch (Exception e) {
            System.err.println("Error Loading cTree JDBC Driver.  This option may not function.\n");
            e.printStackTrace();
            jdbc_available = false;
        }
    }

    public String getColumnName(int i) {
        return headers[i];
    }

    public int getColumnCount() {
        return colCount;
    }

    public int getRowCount() {
        return cache.size();
    }

    public Object getValueAt(int row, int col) {
        return ((String[]) cache.elementAt(row))[col];
    }

    public void setConnectionString(String connString) {
        if (connString.equals(currentConnectString)) {
            // same database - leave current connection in place
            return;
        }
        // Connection string has changed, drop connection and restablish.
        closeDB();
        initDB(connString);
        currentConnectString = connString;
    }

    // Should probably move this to another thread for speed
    public void setQuery(String q) {
        cache = new Vector<String>();
        try {
            // Execute the query and store the result set and its metadata
            ResultSet rs = statement.executeQuery(q);
            ResultSetMetaData meta = rs.getMetaData();
            colCount = meta.getColumnCount();

            // Rebuild the headers array with the new column names
            headers = new String[colCount];
            for (int h = 1; h <= colCount; h++) {
                headers[h - 1] = meta.getColumnName(h);
            }
            while (rs.next()) {
                String[] record = new String[colCount];
                for (int i = 0; i < colCount; i++) {
                    record[i] = rs.getString(i + 1);
                }
                cache.addElement(record);
            }
            fireTableChanged(null); // Notify that we have a new table.
        } catch (Exception e) {
            cache = new Vector(); // blank it out and keep going.
            e.printStackTrace();
        }
    }

    public void initDB(String connString) {
        try {
            db = DriverManager.getConnection(connString);
            // DriverManager.getConnection(connString, connString, connString);
            statement = db.createStatement();
        } catch (Exception e) {
            System.out.println("Could not initialize the database.");
            e.printStackTrace();
        }
    }

    public void closeDB() {
        try {
            if (statement != null) {
                statement.close();
            }
            if (db != null) {
                db.close();
            }
        } catch (Exception e) {
            System.out.println("Could not close the current connection.");
            e.printStackTrace();
        }
    }
}