using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolMaster.App.Context
{
    public class ProfessorClass
    {
        public Int32 professorID { get; set; }
        public string nome { get; set; }
        public string cpf { get; set; }
        public DateTime datanascimento { get; set;}
    }
}