namespace CDG6DC
{
    /// <summary>
    /// Usage:
    ///  
    /// CDG6DC.exe -Flag1 <Param Value1> [-Flag2 <Param Value2> ... [-Flag<N>> <Param Value<N>]]
    /// 
    /// FLAG   DESCRIPTION
    /// =====  =================================================================
    ///    -v  Print Program Version
    ///    -a  Print Author
    ///    -u  Input an authenticated Dentrix Developers Program API Username
    ///    -p  Input an authenticated Dentrix Developers Program API Password
    ///    -k  DTX Key path value
    ///    -h  Display Help
    /// 
    /// </summary>
    /// <param name="args"></param>

    public class M6DG6Cmd
    {
        public enum M6DG6CmdFlag
        {
            AUTHOR,
            VERSION,
            USERNAME,
            PASSWORD,
            DTXKEY,
            HELP
        }

        class M6DG6CmdStatus
        {
            private static int _cEvenCounter;

            public bool _cNoDtxKey {  set; get;  }
            public bool _cNoPassword {  set; get; }
            public bool _cNoUsername {  set; get; }

            public void Inc() { _cEvenCounter++; }
            public void Dec() { _cEvenCounter--; }

            public M6DG6CmdStatus()
            {
                _cEvenCounter = 0;
                _cNoDtxKey = true;
                _cNoPassword = true;
                _cNoUsername = true;
            }

            public bool IsGood()
            {
                return ((_cEvenCounter % 2) == 0);
            }
        }

        private M6DG6CmdStatus _cCmdStatus;

        public M6DG6Cmd()
        {
            _cCmdStatus = new M6DG6CmdStatus();
        }

        public void ExecCmd(M6DG6CmdFlag flag, string paramValue = null)
        {
            switch (flag)
            {
                case M6DG6CmdFlag.AUTHOR:
                    PrintAuthor();
                    break;
                case M6DG6CmdFlag.VERSION:
                    PrintVersion();
                    break;
                case M6DG6CmdFlag.USERNAME:
                    _cCmdStatus.Inc();
                    if (_cCmdStatus._cNoUsername = (string.IsNullOrEmpty(paramValue)) ? true : false)
                        PrintMissingUsername();
                    break;
                case M6DG6CmdFlag.PASSWORD:
                    _cCmdStatus.Dec();
                    if (_cCmdStatus._cNoPassword = (string.IsNullOrEmpty(paramValue)) ? true : false)
                    {
                        _cCmdStatus.Inc();
                        PrintMissingPassword();
                    }
                    break;
                case M6DG6CmdFlag.DTXKEY:

                    if (_cCmdStatus._cNoDtxKey = (string.IsNullOrEmpty(paramValue)) ? true : false)
                    {
                        _cCmdStatus.Inc();
                        PrintMissingDtxKey();

                    }
                    break;
                case M6DG6CmdFlag.HELP:
                    PrintHelp();
                    break;
                default:
                    System.Console.WriteLine("!ERROR!: Un-expected command flag => " + flag);
                    break;
            }
        }

        private void PrintAuthor()
        {
            System.Console.WriteLine("cyrus@mesasix.com");
        }

        private void PrintVersion()
        {
            System.Console.WriteLine("DG6DataCrawler V 0.0.1");
        }

        private void PrintMissingUsername()
        {
            System.Console.WriteLine("!Missing Username!");
        }

        private void PrintMissingPassword()
        {
            System.Console.WriteLine("!Missing Password!");
        }

        private void PrintMissingDtxKey()
        {
            System.Console.WriteLine("!Missing DTX key!");
        }

        private void PrintCommandStatus()
        {
            if (_cCmdStatus.IsGood())
                M6DG6DCrawler.m6dg6Logger.WriteLine("OK Command status!");
            else
                M6DG6DCrawler.m6dg6Logger.WriteLine("!BAD Command status!");
       }

        private void PrintHelp()
        {
            System.Console.WriteLine("Usage:");
            System.Console.WriteLine();
            System.Console.WriteLine("CDG6DC.exe -Flag1 <Param Value1> [-Flag2 <Param Value2> ... [-Flag<N>> <Param Value<N>]]");
            System.Console.WriteLine();
            System.Console.WriteLine("FLAG\tDESCRIPTION");
            System.Console.WriteLine("=====\t=================================================================");
            System.Console.WriteLine("-v\tPrint Program Version");
            System.Console.WriteLine("-a\tPrint Author");
            System.Console.WriteLine("-u\tInput an authenticated Dentrix Developers Program API Username");
            System.Console.WriteLine("-p\tInput an authenticated Dentrix Developers Program API Password");
            System.Console.WriteLine("-k\tDTX Key path value");
            System.Console.WriteLine("-h\tDisplay Help");
        }

        public void PrintStatus()
        {
            if (_cCmdStatus.IsGood())
                System.Console.WriteLine("Status: GOOD");
            else
                System.Console.WriteLine("Status: BAD");
        }
    }
}