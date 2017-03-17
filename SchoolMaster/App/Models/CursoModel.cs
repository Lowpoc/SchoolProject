using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SchoolMaster.App.Context;

namespace SchoolMaster.App.Models
{
    public class CursoModel : ConectDb
    {
        private string _table = "Curso";



        public List<CursoClass> consultarTodos()
        {
            List<CursoClass> listacurso = new List<CursoClass>();
            try
            {
                this.OpenConcection();
                this.commad = new SqlCommand("SELECT * FROM Curso", this.connect);
                this.reader = this.commad.ExecuteReader();
                while (this.reader.Read())
                {
                    CursoClass objCurso = new CursoClass();

                    objCurso._codigo = this.reader["Codigo"].ToString();
                    objCurso._descricao = this.reader["Descricao"].ToString();
                    objCurso._valorCurso = Convert.ToDouble(this.reader["ValorCurso"]);
                    objCurso._cursoID = Convert.ToInt32(this.reader["CursoID"]);
                    listacurso.Add(objCurso);
                }   
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Erro de sql"+ ex);
            }
            finally
            {
                this.CloseConection();
            }


            return listacurso;
        }
    }
}