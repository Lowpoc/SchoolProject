using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SchoolMaster.App.Context
{
    public class ConectDb
    {
        protected SqlConnection connect;
        protected SqlCommand commad;
        protected SqlDataReader reader;
    protected void OpenConcection()
    {
        try
        {
            ConnectionStringSettingsCollection strConnection = ConfigurationManager.ConnectionStrings;
            connect = new SqlConnection(strConnection["SchoolDB"].ConnectionString);
            connect.Open();
        }
            catch (Exception ex)
        {
            throw new Exception("Falha ao Conectar ao conectar: " + ex.Message);
        }
    }

    protected void CloseConection()
    {
        try
        {
            connect.Close();
        }
        catch (Exception ex)
        {
            throw new Exception("Erro ao desconectar: " + ex.Message);
        }
        finally
        {
            connect.Close();
        } 
     }
   }
}



 
