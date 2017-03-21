using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SchoolMaster.App.Context;

namespace SchoolMaster.App.Models
{
    public class DisciplinaModel : ConectDb
    {

        public Boolean cadastrar(DisciplinaClass disc)
        {
            try
            {
                this.OpenConcection();
                this.commad = new SqlCommand("INSERT INTO [Disciplina](Nome,Creditos,LimiteFaltas) VALUES" +
                                             "([@nome],[@creditos],[@limitefaltas])",this.connect);
                this.commad.Parameters.AddWithValue("@nome", disc.nome);
                this.commad.Parameters.AddWithValue("@creditos", disc.creditos);
                this.commad.Parameters.AddWithValue("@limitefaltas", disc.limitfaltas);

                if (this.commad.ExecuteNonQuery() > 0)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao cadastrar Disciiplina" + ex);
            }
            finally
            {
                this.CloseConection();
            }
            return false;
        }

        public List<DisciplinaClass> consultarTodos()
        {
            List<DisciplinaClass>  lista = new List<DisciplinaClass>();
            try
            {
                this.OpenConcection();
                this.commad = new SqlCommand("SELECT * FROM Disciplina",this.connect);
                this.reader = this.commad.ExecuteReader();
                     while (this.reader.Read())
                    {
                        DisciplinaClass disc = new DisciplinaClass();
                        disc.codigo = Convert.ToInt32(this.reader["Codigo"]);
                        disc.nome = this.reader["Nome"].ToString();
                        disc.creditos = Convert.ToInt32(this.reader["Creditos"]);
                        disc.limitfaltas = Convert.ToInt32(this.reader["LimiteFaltas"]);
                        lista.Add(disc);
                    }

            }
            catch (Exception ex)
            {

                throw new Exception("Erro na consulta Disciplina" + ex);
            }
            finally
            {
                this.CloseConection();
            }
            return lista;
        }
    }
}