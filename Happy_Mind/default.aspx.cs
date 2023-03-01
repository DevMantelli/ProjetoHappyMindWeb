using Happy_Mind.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Happy_Mind
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogar_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != "" && txtSenha.Text != "")
            {
                usuario novoUsuario = new usuario();
                if (novoUsuario.select(txtEmail.Text, txtSenha.Text) == "")
                {
                    Session["idU"] = novoUsuario.id;
                    Response.Write("Login Efetuado!!");
                }
                else
                {
                    Response.Write(novoUsuario.select(txtEmail.Text, txtSenha.Text));
                }
            }
            else
            {
                Response.Write("Preencha todos os campos devidamente!!");
            }
        }
    }
}