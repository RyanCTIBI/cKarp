/*
 * Created by SharpDevelop.
 * User: Akam-Apps!
 * Date: 10/28/2015
 * Time: 6:34 AM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */

using System.IO;
namespace CDG6DC
{
	/// <summary>
	/// Description of M6DG6ErrorLogger.
	/// </summary>
	public class M6DG6Logger
	{
        private const string _cDEF_FILE = "M6DG6Logger.log";

        private FileStream _cFile;
        private bool _cVerbose;

        private StreamWriter _cWriter;
        private TextWriter _cStdWriter;

        public M6DG6Logger(string file = null, bool verbose = false)
        {
            if (!string.IsNullOrEmpty(file))
                _cFile = new FileStream(file, FileMode.OpenOrCreate);
            else
                _cFile = new FileStream(_cDEF_FILE, FileMode.OpenOrCreate);

            _cVerbose = verbose;
            _cStdWriter = System.Console.Out;
        }

        public void Listen()
        {
            _cWriter = new StreamWriter(_cFile);
            Con();
        }

        public void End()
        {
            if (_cWriter != null)
                _cWriter.Close();
            Dis();
            _cStdWriter.Close();
        }
        private void Con()
        {
            _cWriter.AutoFlush = true;
            System.Console.SetOut(_cWriter);

        }

        private void Dis()
        {
            System.Console.SetOut(new StreamWriter(System.Console.OpenStandardOutput()));
        }

        public void WriteLine(string text) 
		{
            if (_cVerbose)
            {
                Dis();
                System.Console.WriteLine(text);
            }

            Con();
            System.Console.WriteLine(text);
            Dis();
		}
        public void Write(string text)
        {
            if (_cVerbose)
            {
                Dis();
                System.Console.Write(text);
            }

            Con();
            System.Console.Write(text);
            Dis();
        }

        public void NL()
        {
            if (_cVerbose)
            {
                Dis();
                System.Console.WriteLine();
            }

            Con();
            System.Console.WriteLine();
            Dis();
        }

    }
}
