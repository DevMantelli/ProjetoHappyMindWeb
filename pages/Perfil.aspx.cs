using ProjetoHappyMind.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoHappyMind.pages
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["nome"] == null)
            {
                Response.Redirect("../default.aspx");
            }
            if (Request.QueryString["nome"] != null)
            {
                psicologo Novopsicologos = new psicologo();
                Novopsicologos.selecionarComNome(Request.QueryString["nome"]);
                lblnome.Text = Novopsicologos.nome.ToString();
                //lblespecialidade.Text = Novopsicologos.especialidade.ToString();
                lblnota.Text = Novopsicologos.nota.ToString();
                description.Text = Novopsicologos.descricao.ToString();
                Image1.ImageUrl = Novopsicologos.imgPerfil;
            }
        }
        protected void a_Click(object sender, EventArgs e)
        {
            if(Session["idU"] == null)
            {
                psicologo Novopsicologos = new psicologo();//vinculando ao objeto
                Novopsicologos.selecionarComNome(Request.QueryString["nome"]);//peguei o query lá do objeto
                Session["idP"] = Novopsicologos.id;//alterei pra session pegando a query
                Response.Redirect("calendario.aspx");
            }
            else
            {
                Response.Write("Faça seu login primeiro!!");
            }
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