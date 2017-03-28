using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolMaster.App
{
    public partial class ConsultarFabrica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem item = new ListItem();
                item.Value = "-1";
                item.Text = "Selecione";
                ListaEstado.Items.Add(item);
                ListaFabrica.Items.Add(item);
                ListaFabrica.DataBind();
                ListaEstado.DataBind();
            }
           
        }
    }
}