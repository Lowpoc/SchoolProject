using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using SchoolMaster.App.Context;
using SchoolMaster.App.Models;

namespace SchoolMaster.App.Controllers
{
    [DataObject(true)]
    public class AlunoController
    {

        public string cadastrar(string nome, string cpf, float mgp, DateTime data,int curso)
        {
            AlunoClass objAlu = new AlunoClass(nome, cpf, data, mgp);
            AlunoModel modelo = new AlunoModel();
            modelo.cadastrar(objAlu,curso);
            return "";
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<AlunoClass> consultsarTodos()
        {
            List<AlunoClass> lista  = new List<AlunoClass>();
            AlunoModel modelo = new AlunoModel();
            lista = modelo.consultarTodos();
            return lista;
        }

    }
}