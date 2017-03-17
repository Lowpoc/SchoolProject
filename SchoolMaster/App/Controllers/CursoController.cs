using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SchoolMaster.App.Context;
using SchoolMaster.App.Models;

namespace SchoolMaster.App.Controllers
{
    public class CursoController
    {

        public List<CursoClass> consultarTodos()
        {
            CursoModel crs = new CursoModel();
            List<CursoClass> lista = new List<CursoClass>();
            lista = crs.consultarTodos();
            return lista;
        }
    }
}