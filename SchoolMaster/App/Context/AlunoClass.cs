using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using SchoolMaster.App.Models;

namespace SchoolMaster.App.Context
{
    public class AlunoClass
    {
        public string _nome { get; set; }
        public string _cpf { get; set; }
        public DateTime _datanascimento { get; set; }
        public float _mgp { get; set; }

        public AlunoClass(string nome,string cpf ,DateTime data,float mgp )
        {
            this._nome = nome;
            this._cpf = cpf;
            this._datanascimento = data;
            this._mgp = mgp;
        }

    }
}