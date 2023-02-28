using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetoHappyMind.classes;

namespace ProjetoHappyMind.pages
{
    public partial class psicologos : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["filtro"] != null)
            {
                txtLabelFiltro.text = Convert.ToString(Session["filtro"]);
            }
            Session["filtro"] = txtLabelFiltro.text;
            psicologo psicologos = new psicologo();
            psicologos.filtroManeiro(txtLabelFiltro.text);

            for (int i = 0; i < 5; i++)
            {
                psicologos.selecionarComNome(psicologos.nomes[i]);
                if (i == 0)
                {
                    Image1.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome1.Text = psicologos.nome.ToString();
                    txtBoxDescricao1.Text = psicologos.descricao.ToString();
                    txtBoxTelefone1.Text = psicologos.telefone.ToString();
                    txtBoxNotaC1.Text = psicologos.nota.ToString();
                }
                else if (i == 1)
                {
                    Image2.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome2.Text = psicologos.nome.ToString();
                    txtBoxDescricao2.Text = psicologos.descricao.ToString();
                    txtBoxTelefone2.Text = psicologos.telefone.ToString();
                    txtBoxNotaC2.Text = psicologos.nota.ToString();
                }
                else if (i == 2)
                {
                    Image3.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome3.Text = psicologos.nome.ToString();
                    txtBoxDescricao3.Text = psicologos.descricao.ToString();
                    txtBoxTelefone3.Text = psicologos.telefone.ToString();
                    txtBoxNotaC3.Text = psicologos.nota.ToString();
                }
                else if (i == 3)
                {
                    Image4.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome4.Text = psicologos.nome.ToString();
                    txtBoxDescricao4.Text = psicologos.descricao.ToString();
                    txtBoxTelefone4.Text = psicologos.telefone.ToString();
                    txtBoxNotaC4.Text = psicologos.nota.ToString();
                }
                else if (i == 4)
                {
                    Image5.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome5.Text = psicologos.nome.ToString();
                    txtBoxDescricao5.Text = psicologos.descricao.ToString();
                    txtBoxTelefone5.Text = psicologos.telefone.ToString();
                    txtBoxNotaC5.Text = psicologos.nota.ToString();
                }
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Perfil.aspx?nome="+txtBoxNome1.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Perfil.aspx?nome=" + txtBoxNome2.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Perfil.aspx?nome=" + txtBoxNome3.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Perfil.aspx?nome=" + txtBoxNome4.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Perfil.aspx?nome=" + txtBoxNome5.Text);
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