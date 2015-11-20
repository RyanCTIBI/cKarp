using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DtxSQLBrowser
{
    public enum EDtxVersion : int
    {
        NoAPI = 0,
        DTXG62 = 162,
        DTXG61 = 161,
        DTXG6 = 160,
        DTXG52 = 152,
        DTXG51 = 151,
        DTXG5 = 150,
    }
    public enum EDtxReaderType
    {
        Reader = 0,
        Adapter = 1,
        ReaderSafe = 2,
        FaircomReader = 3,
        FaircomAdapter = 4,
        FaircomReaderSafe = 5
    }
    public enum EDatabase
    {
        DentrixSQL = 0,
        TutorSQL =1,
    }
}
