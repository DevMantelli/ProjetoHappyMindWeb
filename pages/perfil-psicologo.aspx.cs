using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Happy_Mind.classes;


namespace Happy_Mind.pages
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["nome"] == null)
            {
                Response.Redirect("../default.html");
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

            psicologo Novopsicologos = new psicologo();//vinculando ao objeto
            Novopsicologos.selecionarComNome(Request.QueryString["nome"]);//peguei o query lá do objeto
            Session["id"] = (Novopsicologos.id);//alterei pra session pegando a query
            Response.Redirect("cadastro-consulta.aspx");
        }
    }
}


