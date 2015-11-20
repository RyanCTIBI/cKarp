using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DtxSQLBrowser.Helpers;

namespace DtxSQLBrowser
{
    public interface IContentSerializable
    {
        bool SaveContent();
        bool LoadContent();
    }
    public interface IQueryControl
    {
        System.Data.DataSet ExecuteQuery(EDtxReaderType type, int timeout, string cmdText, ParamHelper[] paramList, ref TimeSpan span);
    }
    public interface IQueryBuilder
    {
        string CommandText { get; set; }
        ParamHelper[] Parameters { get; }
    }
}
