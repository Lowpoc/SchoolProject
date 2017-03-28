using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Windows.Forms;
using SchoolMaster.App.Context;

namespace SchoolMaster.App.Models
{
    public class FabricaModel : ConectDb
    {


        public List<FabricaClass> consultarFiltros(string DS_ESTADO, string DS_FABRICA)
        {
            List<FabricaClass> lista = new List<FabricaClass>();
            try
            {

                this.OpenConcection();
                this.commad = new SqlCommand(@"SELECT F.ID_FABRICA, F.DS_Fabrica,F.DS_Endereco,F.NU_CNPJ,F.NU_TELEFONE,F.DS_CIDADE,F.DS_ESTADO,
                                              count(P.ID_PRODUTO) AS QTD FROM FABRICA F
                                              LEFT JOIN PRODUTO P ON  F.ID_FABRICA = P.ID_FABRICA
                                               WHERE(@estado is null  or DS_ESTADO = @estado) 
                                               AND(@fabrica is null or DS_Fabrica = @fabrica)
                                               GROUP BY  F.ID_FABRICA,F.DS_Fabrica,F.DS_Endereco,F.NU_CNPJ,F.NU_TELEFONE,F.DS_CIDADE,F.DS_ESTADO
                                               ", this.connect);

                if (string.IsNullOrEmpty(DS_ESTADO))
                {
                    this.commad.Parameters.AddWithValue("@estado", DBNull.Value);
                }
                else
                {
                    this.commad.Parameters.AddWithValue("@estado", DS_ESTADO);
                }

                if (string.IsNullOrEmpty(DS_FABRICA))
                {
                    this.commad.Parameters.AddWithValue("@fabrica", DBNull.Value);
                }
                else
                {
                    this.commad.Parameters.AddWithValue("@fabrica", DS_FABRICA);
                }

                this.reader = this.commad.ExecuteReader();
                while (this.reader.Read())
                {
                    FabricaClass objFabrica = new FabricaClass();
                    objFabrica.ID_FABRICA = Convert.ToInt32(this.reader["ID_FABRICA"]);
                    objFabrica.DS_Fabrica = this.reader["DS_Fabrica"].ToString();
                    objFabrica.DS_Endereco = this.reader["DS_Endereco"].ToString();
                    objFabrica.NU_CNPJ = this.reader["NU_CNPJ"].ToString();
                    objFabrica.NU_TELEFONE = Convert.ToInt32(this.reader["NU_TELEFONE"]);
                    objFabrica.DS_CIDADE = this.reader["DS_CIDADE"].ToString();
                    objFabrica.DS_ESTADO = this.reader["DS_ESTADO"].ToString();
                    objFabrica.qtdProdutos = Convert.ToInt32(this.reader["QTD"].ToString());
                    lista.Add(objFabrica);
                }

            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                this.CloseConection();
            }
            return lista;
        }

        public bool deletar(Int32 ID_FABRICA)
        {
            try
            {
                this.OpenConcection();
                this.commad = new SqlCommand("DELETE FROM FABRICA WHERE  ID_FABRICA = @id",this.connect);

                this.commad.Parameters.AddWithValue("@id", ID_FABRICA);
                this.commad.ExecuteNonQuery();
                if (this.commad.ExecuteNonQuery() > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                

            }
            catch (Exception)
            {

                throw new Exception("Tentou deletar Uma fabrica com produto Vinculado");
            }
            finally
            {
                this.CloseConection();
            }
            return false;
        }

        public void update(FabricaClass Fabrica)
        {
            try
            {
                this.OpenConcection();
                this.commad =
                    new SqlCommand(@"UPDATE [FABRICA] SET [DS_FABRICA] = @fabrica , [DS_Endereco] = @endereco,
                                            [NU_CNPJ] = @cnpj , [NU_TELEFONE] = @telefone , [DS_CIDADE] = @cidade , [DS_ESTADO] = @estado
                                            WHERE [ID_FABRICA] = @id ", this.connect);
                this.commad.Parameters.AddWithValue("@fabrica", Fabrica.DS_Fabrica);
                this.commad.Parameters.AddWithValue("@endereco", Fabrica.DS_Endereco);
                this.commad.Parameters.AddWithValue("@cnpj", Fabrica.NU_CNPJ);
                this.commad.Parameters.AddWithValue("@telefone", Fabrica.NU_TELEFONE);
                this.commad.Parameters.AddWithValue("@cidade", Fabrica.DS_CIDADE);
                this.commad.Parameters.AddWithValue("@estado", Fabrica.DS_ESTADO);
                this.commad.Parameters.AddWithValue("@id", Fabrica.ID_FABRICA);
                this.commad.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro no update d Fabrica" + ex);
            }
            finally
            {
                this.CloseConection();
            }
        }
    }
}