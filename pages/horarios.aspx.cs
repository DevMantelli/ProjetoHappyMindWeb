using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Happy_Mind.classes;

namespace Happy_Mind.pages
{
    public partial class horarios : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["data"] = Request.QueryString["data"];
            VerificarDisponibilidade();
        }
        protected void VerificarDisponibilidade()
        {
            consulta Consulta = new consulta();
            Consulta.selectComData(Request.QueryString["data"]);

            for (int i = 0; i < 25; i++)
            {
                if (Consulta.horas[i] == "00:00")
                {
                    Button1.Text = "Indisponivel";
                    Button1.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "01:00")
                {
                    Button2.Text = "Indisponivel";
                    Button2.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "02:00")
                {
                    Button3.Text = "Indisponivel";
                    Button3.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "03:00")
                {
                    Button4.Text = "Indisponivel";
                    Button4.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "04:00")
                {
                    Button5.Text = "Indisponivel";
                    Button5.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "05:00")
                {
                    Button6.Text = "Indisponivel";
                    Button6.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "06:00")
                {
                    Button7.Text = "Indisponivel";
                    Button7.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "07:00")
                {
                    Button8.Text = "Indisponivel";
                    Button8.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "08:00")
                {
                    Button9.Text = "Indisponivel";
                    Button9.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "09:00")
                {
                    Button10.Text = "Indisponivel";
                    Button10.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "10:00")
                {
                    Button11.Text = "Indisponivel";
                    Button11.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "11:00")
                {
                    Button12.Text = "Indisponivel";
                    Button12.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "12:00")
                {
                    Button13.Text = "Indisponivel";
                    Button13.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "13:00")
                {
                    Button14.Text = "Indisponivel";
                    Button14.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "14:00")
                {
                    Button15.Text = "Indisponivel";
                    Button15.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "15:00")
                {
                    Button16.Text = "Indisponivel";
                    Button16.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "16:00")
                {
                    Button17.Text = "Indisponivel";
                    Button17.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "17:00")
                {
                    Button18.Text = "Indisponivel";
                    Button18.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "18:00")
                {
                    Button19.Text = "Indisponivel";
                    Button19.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "19:00")
                {
                    Button20.Text = "Indisponivel";
                    Button20.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "20:00")
                {
                    Button21.Text = "Indisponivel";
                    Button21.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "21:00")
                {
                    Button22.Text = "Indisponivel";
                }
                else if (Consulta.horas[i] == "22:00")
                {
                    Button23.Text = "Indisponivel";
                    Button23.ForeColor = System.Drawing.Color.Red;
                }
                else if (Consulta.horas[i] == "23:00")
                {
                    Button24.Text = "Indisponivel";
                    Button24.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    i = 24;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button1.CssClass = "active";
            Session["hora"] = "00:00";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button2.CssClass = "active";
            Session["hora"] = "01:00";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button3.CssClass = "active";
            Session["hora"] = "02:00";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button4.CssClass = "active";
            Session["hora"] = "03:00";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button5.CssClass = "active";
            Session["hora"] = "04:00";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button6.CssClass = "active";
            Session["hora"] = "05:00";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button7.CssClass = "active";
            Session["hora"] = "06:00";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button8.CssClass = "active";
            Session["hora"] = "07:00";
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button9.CssClass = "active";
            Session["hora"] = "08:00";
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button10.CssClass = "active";
            Session["hora"] = "09:00";
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button11.CssClass = "active";
            Session["hora"] = "10:00";
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button12.CssClass = "active";
            Session["hora"] = "11:00";
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button13.CssClass = "active";
            Session["hora"] = "12:00";
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button14.CssClass = "active";
            Session["hora"] = "13:00";
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button15.CssClass = "active";
            Session["hora"] = "14:00";
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button16.CssClass = "active";
            Session["hora"] = "15:00";
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button17.CssClass = "active";
            Session["hora"] = "16:00";
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button18.CssClass = "active";
            Session["hora"] = "17:00";
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button19.CssClass = "active";
            Session["hora"] = "18:00";
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button20.CssClass = "active";
            Session["hora"] = "19:00";
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button21.CssClass = "active";
            Session["hora"] = "20:00";
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button22.CssClass = "active";
            Session["hora"] = "21:00";
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button23.CssClass = "active";
            Session["hora"] = "22:00";
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            LimparActive();
            Button24.CssClass = "active";
            Session["hora"] = "23:00";
        }

        protected void LimparActive()
        {
            Button1.CssClass = "hora";
            Button2.CssClass = "hora";
            Button3.CssClass = "hora";
            Button4.CssClass = "hora";
            Button5.CssClass = "hora";
            Button6.CssClass = "hora";
            Button7.CssClass = "hora";
            Button8.CssClass = "hora";
            Button9.CssClass = "hora";
            Button10.CssClass = "hora";
            Button11.CssClass = "hora";
            Button12.CssClass = "hora";
            Button13.CssClass = "hora";
            Button14.CssClass = "hora";
            Button15.CssClass = "hora";
            Button16.CssClass = "hora";
            Button17.CssClass = "hora";
            Button18.CssClass = "hora";
            Button19.CssClass = "hora";
            Button20.CssClass = "hora";
            Button21.CssClass = "hora";
            Button22.CssClass = "hora";
            Button23.CssClass = "hora";
            Button24.CssClass = "hora";
        }
    }
}