using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolMaster.App.Context
{
    public class CursoClass
    {

        public string _codigo { get; set; }
        public string _descricao { get; set; }
        public Double _valorCurso { get; set; }
        public Int32 _cursoID { get; set; }
        public Int32 qtdAlunos { get; set; }
    }
}