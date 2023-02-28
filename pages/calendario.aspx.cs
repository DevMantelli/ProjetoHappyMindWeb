using ProjetoHappyMind.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoHappyMind.pages
{
    public partial class calendario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idU"] == null || Session["idP"] == null)
            {
                Response.Write("Faça seu login primeiro!!");
                Response.Redirect("../default.aspx");
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["hora"] != null)
            {
                consulta Consulta = new consulta();
                Consulta.construtor(Convert.ToInt32(Session["idP"]), Convert.ToInt32(Session["idU"]), Session["data"].ToString(), Session["hora"].ToString());

                if (Consulta.inserir() == "")
                {
                    Session.Clear();
                    Response.Write("Consulta marcada!!");
                    Response.Redirect("../default.aspx");
                }
                else
                {
                    Response.Write(Consulta.inserir());
                }
            }
            else
            {
                Response.Write("Escolha a data e horário de sua consulta");
            }
        }
    }
}