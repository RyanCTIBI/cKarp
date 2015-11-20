using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace D6Libs
{
    public class ParamHelper
    {
        public ParameterDirection Direction { get; set; }
        public string Name { get; set; }
        public object Value { get; set; }
        public object OutValue { get; set; }
        public int Size { get; set; }
    }
}
