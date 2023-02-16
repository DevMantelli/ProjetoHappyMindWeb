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
            psicologo psicologos = new psicologo();
            //psicologos.filtroManeiro(txtLabelFiltro.text);

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
    }
}