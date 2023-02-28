using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetoHappyMind.classes;

namespace ProjetoHappyMind.pages
{
    public partial class cadastro_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            if (txtnome.Text != "" && txtSenha.Text != "" && txtEmail.Text != "" && txtDtNascimento.Text != "" && txtRg.Text != "" && txtTelefone.Text != "")
            {
                usuario novoUsuario = new usuario();
                novoUsuario.construtor(0, txtnome.Text, txtDtNascimento.Text, txtEmail.Text, txtTelefone.Text, txtSenha.Text, txtRg.Text);
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