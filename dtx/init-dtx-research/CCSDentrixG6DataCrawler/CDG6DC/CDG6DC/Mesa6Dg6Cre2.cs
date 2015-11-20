namespace CDG6DC
{
    /// <summary>
    ///  Mesasix Dentrix G6 Credentials Encoded
    /// </summary>
    class Mesa6DG6Creds
    {
        public static readonly Mesa6DG6Creds _instance = new Mesa6DG6Creds();

        private const string _cSERVER = "AKAM-APPS";
        private const string _cUSERNAME = "vscmLRed";
        private const string _cPASSWORD = "SPCPvsVna";
        private const string _cDTXKEYPATH = "C:\\Users\\Cyrus\\AppData\\Local\\Temp\\ckz_VPRA\\vscmLRed.dtxkey";

        public string CDefServer()
        {
            return Mesa6DG6Creds._cSERVER;
        }
        public string CDefUserName()
        {
            return Mesa6DG6Creds._cUSERNAME;
        }

        public string CDefPassword()
        {
            return Mesa6DG6Creds._cPASSWORD;
        }

        public string CDefDTXKeyPath()
        {
            return Mesa6DG6Creds._cDTXKEYPATH;
        }

    }
}