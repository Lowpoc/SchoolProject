using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolMaster.App.Context
{
    public class TurmasClass
    {
        public Int32 turmaID { get; set; }
        public Int32 ano { get; set; }
        public Int32 semestre { get; set; }
        public IList<DisciplinaClass> ListaDisciplina { get; set; }
        public Int32 vagas { get; set;}
    }
}