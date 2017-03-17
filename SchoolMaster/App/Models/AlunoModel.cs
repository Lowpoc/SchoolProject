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

        public void cadastrar(AlunoClass alu)
        {
            try
            {
                this.OpenConcection();
                this.commad = new SqlCommand("INSERT INTO [ALUNO] ([NOME], [CPF], [DATANASCIMENTO], [MGP],[CURSOID]) VALUES (@NOME, @CPF, @DATANASCIMENTO, @MGP, @CURSOID)",this.connect);
                this.commad.Parameters.AddWithValue("@NOME", alu._nome);
                this.commad.Parameters.AddWithValue("@CPF", alu._cpf);
                this.commad.Parameters.AddWithValue("@DATANASCIMENTO", alu._datanascimento);
                this.commad.Parameters.AddWithValue("@MGP", alu._mgp);
                this.commad.Parameters.AddWithValue("@CURSOID",1);
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
    }
}