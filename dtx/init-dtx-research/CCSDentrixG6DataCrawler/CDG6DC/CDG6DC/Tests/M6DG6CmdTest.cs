using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDG6DC.Tests
{
    public class M6DG6CmdTest
    {
        static M6DG6Cmd _cCommand;

        private static void Init ()
        {
            _cCommand = new M6DG6Cmd();
        }

        public static void run()
        {
            Init();
            TestVersion();
            TestAuthor();
            TestUsername1();
            TestUsername2();
            TestHelp();
            TestPassword1();
            TestPassword2();
            TestDtxKey1();
            TestDtxKey2();

        }

        private static void TestVersion()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.VERSION);
            _cCommand.PrintStatus();
        }
        private static void TestAuthor()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.AUTHOR);
            _cCommand.PrintStatus();
        }

        private static void TestUsername1()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.USERNAME);
            _cCommand.PrintStatus();
        }

        private static void TestUsername2()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.USERNAME, "Mesa6");
            _cCommand.PrintStatus();
        }

        private static void TestHelp()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.HELP);
            _cCommand.PrintStatus();
        }

        private static void TestPassword1()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.PASSWORD);
            _cCommand.PrintStatus();
        }

        private static void TestPassword2()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.PASSWORD, "6");
            _cCommand.PrintStatus();
        }
        private static void TestDtxKey1()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.DTXKEY);
            _cCommand.PrintStatus();
        }

        private static void TestDtxKey2()
        {
            _cCommand.ExecCmd(M6DG6Cmd.M6DG6CmdFlag.DTXKEY, "dtxKey");
            _cCommand.PrintStatus();
        }

    }
}
