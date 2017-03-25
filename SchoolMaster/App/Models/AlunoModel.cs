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
                            Convert.ToUInt64(this.reader["CPF"]).ToString(@"000\.000\.000\-00"),
                            Convert.ToDateTime(this.reader["DataNascimento"].ToString()),
                            float.Parse(this.reader["MGP"].ToString())
                        );
                        objAlu.alunoid = Convert.ToInt32(this.reader["AlunoiD"]);
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

        public int deletarAluno(Int32 alunoID)
        {
            try
            {
                this.OpenConcection();
                this.commad = new SqlCommand("DELETE FROM [ALUNO] WHERE AlunoID = @ID", this.connect);
                this.commad.Parameters.AddWithValue("@ID", alunoID);
                this.commad.ExecuteNonQuery();
            }
            catch (Exception)
            {
                
                throw new Exception("Erro ao executar delete Aluno");
                this.CloseConection();
            }     
            this.CloseConection();
            return 1;
        }
        #region ConsultaFiltros
        public List<AlunoClass> consultarFiltros(string nome, Int32 alunoid, DateTime _datanascimento)
        {
            List<AlunoClass> lista = new List<AlunoClass>();
            try
            {
                this.OpenConcection();
                string sql = @"SELECT * FROM ALUNO WHERE
                               (@nome IS NULL  or nome LIKE @nome) AND (@alunoid is NULL or AlunoID = @alunoid ) AND
                               (@_datanascimento is NULL or Datanascimento = @_datanascimento)";
                this.commad = new SqlCommand(sql, this.connect);

                if (string.IsNullOrEmpty(nome))
                {
                    this.commad.Parameters.AddWithValue("@nome", DBNull.Value);
                }
                else
                {
                    this.commad.Parameters.AddWithValue("@nome", "%"+nome+"%");
                }

                if (alunoid > 0)
                {
                    this.commad.Parameters.AddWithValue("@alunoid", alunoid);
                }
                else
                {
                    this.commad.Parameters.AddWithValue("@alunoid", DBNull.Value);
                }

                if (_datanascimento.Equals(DateTime.MinValue))
                {
                    this.commad.Parameters.AddWithValue("@_datanascimento", DBNull.Value);
                }
                else
                {
                    this.commad.Parameters.AddWithValue("@_datanascimento",_datanascimento);
                }

                this.reader = this.commad.ExecuteReader();
                if (this.reader.HasRows)
                {
                    while (this.reader.Read())
                    {
                        AlunoClass objAlu = new AlunoClass(
                            this.reader["Nome"].ToString(),
                            Convert.ToUInt64(this.reader["CPF"]).ToString(@"000\.000\.000\-00"),
                            Convert.ToDateTime(this.reader["DataNascimento"].ToString()),
                            float.Parse(this.reader["MGP"].ToString())
                        );
                        objAlu.alunoid = Convert.ToInt32(this.reader["AlunoiD"]);
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
        #endregion
    }
}