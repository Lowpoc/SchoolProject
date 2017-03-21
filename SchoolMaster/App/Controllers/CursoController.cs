using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using SchoolMaster.App.Context;
using SchoolMaster.App.Models;

namespace SchoolMaster.App.Controllers
{
    [DataObject(true)]
    public class CursoController
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<CursoClass> consultarTodos()
        {
            CursoModel crs = new CursoModel();
            List<CursoClass> lista = new List<CursoClass>();
            lista = crs.consultarTodos();
            return lista;
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public Boolean cadastrar(CursoClass curso)
        {
            CursoModel csr = new CursoModel();
            return csr.cadastrar(curso);
        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public Boolean remover(CursoClass c)
        {
            CursoModel csr = new CursoModel();
            return csr.removerCurso(c);
        }
    }
}