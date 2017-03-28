using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolMaster.App.Context
{
    public class FabricaClass
    {
        public Int32 ID_FABRICA { get; set; }
        public string DS_Fabrica { get; set; }
        public string DS_Endereco { get; set; }
        public string NU_CNPJ { get; set; }
        public Int32 NU_TELEFONE { get; set; }
        public string DS_CIDADE { get; set; }
        public string DS_ESTADO { get; set; }

        public Int32 qtdProdutos { get; set; }
    }
}