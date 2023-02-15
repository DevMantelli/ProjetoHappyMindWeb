using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Happy_Mind.classes;

namespace Happy_Mind.pages
{
    public partial class psicologos : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            psicologo psicologos = new psicologo();
            psicologos.filtroManeiro(txtLabelFiltro.text);

            for (int i = 0; i < 4; i++)
            {
                psicologos.selecionarComNome(psicologos.nomes[i]);
                if (i == 0)
                {
                    Image1.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome1.text = psicologos.nome.ToString();
                    txtBoxDescricao1.text = psicologos.descricao.ToString();
                    txtBoxTelefone1.text = psicologos.telefone.ToString();
                    txtBoxNotaC1.text = psicologos.nota.ToString();
                }
                else if (i == 1)
                {
                    Image2.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome2.text = psicologos.nome.ToString();
                    txtBoxDescricao2.text = psicologos.descricao.ToString();
                    txtBoxTelefone2.text = psicologos.telefone.ToString();
                    txtBoxNotaC2.text = psicologos.nota.ToString();
                }
                else if (i == 2)
                {
                    Image3.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome3.text = psicologos.nome.ToString();
                    txtBoxDescricao3.text = psicologos.descricao.ToString();
                    txtBoxTelefone3.text = psicologos.telefone.ToString();
                    txtBoxNotaC3.text = psicologos.nota.ToString();
                }
                else if (i == 3)
                {
                    Image4.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome4.text = psicologos.nome.ToString();
                    txtBoxDescricao4.text = psicologos.descricao.ToString();
                    txtBoxTelefone4.text = psicologos.telefone.ToString();
                    txtBoxNotaC4.text = psicologos.nota.ToString();
                }
                else if (i == 4)
                {
                    Image5.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome5.text = psicologos.nome.ToString();
                    txtBoxDescricao5.text = psicologos.descricao.ToString();
                    txtBoxTelefone5.text = psicologos.telefone.ToString();
                    txtBoxNotaC5.text = psicologos.nota.ToString();
                }
                else if (i == 5)
                {
                    Image6.ImageUrl = psicologos.imgPerfil;
                    txtBoxNome6.text = psicologos.nome.ToString();
                    txtBoxDescricao6.text = psicologos.descricao.ToString();
                    txtBoxTelefone6.text = psicologos.telefone.ToString();
                    txtBoxNotaC6.text = psicologos.nota.ToString();
                }
            }
        }
    }
}