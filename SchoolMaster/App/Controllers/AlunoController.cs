﻿using System;
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
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void DeleteAluno(Int32 alunoId)
        {
            AlunoModel modelo = new AlunoModel();
            modelo.deletarAluno(alunoId);
        }

        #region ConsultaFiltros
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<AlunoClass> consultsarFiltros(string nome ,Int32 alunoid , DateTime _datanascimento)
        {
            List<AlunoClass> lista = new List<AlunoClass>();
            AlunoModel modelo = new AlunoModel();
            lista = modelo.consultarFiltros(nome,alunoid,_datanascimento);
            return lista;
        }
        #endregion

        #region UpdateMetodos

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarAluno(string _nome, string _cpf,DateTime _datanascimento ,float _mgp,Int32 alunoid)
        {
            _cpf = _cpf.Replace("-", "");
            _cpf = _cpf.Replace(".", "");
            AlunoClass objAlu = new AlunoClass(_nome,_cpf,_datanascimento,_mgp);
            objAlu.alunoid = alunoid;
            AlunoModel modelo = new AlunoModel();
            modelo.update(objAlu);
        }

        #endregion
    }
}