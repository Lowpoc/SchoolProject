using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using SchoolMaster.App.Controllers;

namespace SchoolMaster.App
{
    public partial class CadastrarAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CursoController crs = new CursoController();
                listaCursos.DataSource = crs.consultarTodos();
                listaCursos.DataBind();
            }
        }

        protected void CadastrarAlunoClass(object sender, EventArgs e)
        {
            AlunoController aluControl = new AlunoController();
            string cpf = aluno_cpf.Text;
            string nome = aluno_nome.Text;
            float mgp = float.Parse(aluno_mgp.Text);
            DateTime data = Convert.ToDateTime(aluno_datanascimento.Text);
            aluControl.cadastrar(nome,cpf,mgp,data);
        }
    }
}