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
                Console.WriteLine("Erro de sql" + ex);
            }
            finally
            {
                this.CloseConection();
            }


            return listacurso;
        }

        public Boolean cadastrar(CursoClass curso)
        {
            try
            {
                this.OpenConcection();
                this.commad =
                    new SqlCommand(
                        "INSERT INTO [CURSO](Codigo,Descricao,ValorCurso) VALUES (@CODIGO,@DESCRICAO,@VALOR)",
                        this.connect);
                this.commad.Parameters.AddWithValue("@CODIGO", curso._codigo);
                this.commad.Parameters.AddWithValue("@DESCRICAO", curso._descricao);
                this.commad.Parameters.AddWithValue("@VALOR", curso._valorCurso);

                if (this.commad.ExecuteNonQuery() > 0)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Erro de sql"+ex);
            }
            finally
            {
                this.CloseConection();
            }
            return false;
        }
    }
}