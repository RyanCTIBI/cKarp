namespace CDG6DC
{

    public class M6DG6DCrawler
    {
        public static M6DG6Logger m6dg6Logger= new M6DG6Logger(null, true);
        /// <summary>
        /// Usage:
        ///  
        /// CDG6DC [-Flags] [[[param1] param2] param3]
        /// 
        /// Flags Available:
        /// 
        ///     -v  Version
        ///     -a  Print Author
        ///     -u  Input an authenticated Dentrix Developers Program API Username
        ///     -p  Input an authenticated Dentrix Developers Program API Password
        ///     -k  KeyPath
        /// 
        /// </summary>
        /// <param name="args"></param>
        public static void Main(string[] args)
        {
            m6dg6Logger.Listen();
            
            Tests.M6DG6CmdTest.run();
            m6dg6Logger.End();
        }
    }
}