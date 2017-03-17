using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SchoolMaster.App.Context;

namespace SchoolMaster.App.Models
{
    public class AlunoModel : ConectDb
    {
        private string _table = "ALUNO";

        public void cadastrar(AlunoClass alu, int curso)
        {
            try
            {
                this.OpenConcection();
                this.commad =
                    new SqlCommand(
                        "INSERT INTO [ALUNO] ([NOME], [CPF], [DATANASCIMENTO], [MGP],[CURSOID]) VALUES (@NOME, @CPF, @DATANASCIMENTO, @MGP, @CURSOID)",
                        this.connect);
                this.commad.Parameters.AddWithValue("@NOME", alu._nome);
                this.commad.Parameters.AddWithValue("@CPF", alu._cpf);
                this.commad.Parameters.AddWithValue("@DATANASCIMENTO", alu._datanascimento);
                this.commad.Parameters.AddWithValue("@MGP", alu._mgp);
                this.commad.Parameters.AddWithValue("@CURSOID", curso);
                this.commad.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao cadastrar Jogador: " + ex.Message);
            }
            finally
            {
                this.CloseConection();
            }
        }

        public List<AlunoClass> consultarTodos()
        {
            List<AlunoClass> lista = new List<AlunoClass>();
            try
            {
                this.OpenConcection();
                string sql = "SELECT * FROM ALUNO";
                this.commad = new SqlCommand(sql, this.connect);
                this.reader = this.commad.ExecuteReader();
                if (this.reader.HasRows)
                {
                    while (this.reader.Read())
                    {
                        AlunoClass objAlu = new AlunoClass(
                            this.reader["Nome"].ToString(),
                            this.reader["CPF"].ToString(),
                            Convert.ToDateTime(this.reader["DataNascimento"].ToString()),
                            float.Parse(this.reader["MGP"].ToString())
                        );
                        lista.Add(objAlu);
                    }
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Erro de Sql" + ex);
            }
            finally
            {
                this.CloseConection();
            }
            return lista;
        }
    }
}