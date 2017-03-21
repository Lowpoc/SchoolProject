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
    public class DisciplinaController
    {

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public Boolean cadastrar(DisciplinaClass disc)
        {
            DisciplinaModel modelo = new DisciplinaModel();
            return modelo.cadastrar(disc);
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<DisciplinaClass> consultarTodos()
        {
            DisciplinaModel modelo = new DisciplinaModel();
            return modelo.consultarTodos();
        }
    }
}