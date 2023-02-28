using Happy_Mind.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Happy_Mind.pages
{
    public partial class cadastro_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            if (txtNome.Text != "" && txtSenha.Text != "" && txtEmail.Text != "" && txtDtNascimento.Text != "" && txtRg.Text != "" && txtTelefone.Text != "")
            {
                usuario novoUsuario = new usuario();
                novoUsuario.construtor(0, txtNome.Text, txtDtNascimento.Text, txtEmail.Text, Convert.ToDecimal(txtTelefone.Text), txtSenha.Text, Convert.ToDecimal(txtRg.Text));
                novoUsuario.inserir();
                if (novoUsuario.inserir() == "")
                {
                    novoUsuario.select(novoUsuario.email, novoUsuario.senha);
                    Session["idU"] = novoUsuario.id;
                    Response.Write("Usuario Cadastrado!!");
                    Response.Redirect("../default.aspx");
                }
                else
                {
                    Response.Write(novoUsuario.inserir());
                }
            }
            else
            {
                Response.Write("Preencha todos os campos devidamente!!");
            }
        }
        protected void BtnLogar_Click(object sender, EventArgs e)
        {
            if (txtEmail2.Text != "" && txtSenha2.Text != "")
            {
                usuario novoUsuario = new usuario();
                if (novoUsuario.select(txtEmail2.Text, txtSenha2.Text) == "")
                {
                    Session["idU"] = novoUsuario.id;
                    Response.Write("Login Efetuado!!");
                }
                else
                {
                    Response.Write(novoUsuario.select(txtEmail2.Text, txtSenha2.Text));
                }
            }
            else
            {
                Response.Write("Preencha todos os campos devidamente!!");
            }
        }
    }
}