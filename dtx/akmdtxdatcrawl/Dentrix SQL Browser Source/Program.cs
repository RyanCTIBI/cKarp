using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Reflection;
using Microsoft.Win32;

namespace DtxSQLBrowser
{
    static class Program
    {
        //This should really gather the 'exepath' from the Dentrix Registry rather than being hard coded
        private static string DENTRIX_DIRECTORY = "";

        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void MainGL()
        {
            AppDomain.CurrentDomain.AssemblyResolve += new ResolveEventHandler(CurrentDomain_AssemblyResolve);
            DENTRIX_DIRECTORY = Helpers.HelperFunctions.GetExePath();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new MainForm());
            Application.Run(new QueryMainGL());
        }
        static System.Reflection.Assembly CurrentDomain_AssemblyResolve(object sender, ResolveEventArgs args)
        {
            try
            {
                string assemblyName = args.Name.Substring(0, args.Name.IndexOf(","));
                if (assemblyName.EndsWith(".resources"))
                    return null;
                //string assemblyBasePath = System.IO.Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
                Assembly assembly = Assembly.LoadFrom(DENTRIX_DIRECTORY + assemblyName + ".dll");
                return assembly;
            }
            catch (Exception ex)
            {
                string assemblyName = args.Name.Substring(0, args.Name.IndexOf(","));
                throw new ApplicationException("Failed resolving assembly - " + assemblyName, ex);
            }
        }
    }
}
