using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolMaster.App.Context
{
    public class DisciplinaClass
    {
       public Int32 codigo { get; set; }
       public string nome { get; set; }
       public Int32 creditos { get; set; }
       public Int32 limitfaltas { get; set; }
    }
}