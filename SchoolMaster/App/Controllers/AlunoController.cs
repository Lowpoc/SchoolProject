using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using SchoolMaster.App.Context;
using SchoolMaster.App.Models;

namespace SchoolMaster.App.Controllers
{
    public class AlunoController
    {

        public string cadastrar(string nome, string cpf, float mgp, DateTime data)
        {
            AlunoClass objAlu = new AlunoClass(nome, cpf, data, mgp);
            AlunoModel modelo = new AlunoModel();
            modelo.cadastrar(objAlu);
            return "";
        }

    }
}