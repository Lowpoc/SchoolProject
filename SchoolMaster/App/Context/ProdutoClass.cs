using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace SchoolMaster.App.Context
{
    public class ProdutoClass
    {
        public Int32 ID_PRODUTO { get; set; }
        public string DS_PRODUTO { get; set; }
        public double VL_PRECO { get; set; }
        public double VL_COMISSAO { get; set; }

        public char FL_MAIORIDADE { get; set; }
        public Int32 ID_FABRICA { get; set;}
    }
}