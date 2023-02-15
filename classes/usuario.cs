using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Happy_Mind.classes
{
    public class usuario
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string senha { get; set; }
        public string dtNascimento { get; set; }
        public decimal rg { get; set; }
        public decimal telefone { get; set; }

        public void construtor(int idC, string nomeC, string dtNascimentoC, string emailC, decimal telefoneC, string senhaC, decimal rgC)
        {
            id = idC;
            nome = nomeC;
            dtNascimento = dtNascimentoC;
            email = emailC;
            telefone = telefoneC;
            senha = senhaC;
            rg = rgC;
        }

        SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString.ToString());

        public string inserir()
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "insert into usuario values(" + nome + "," + email + "," + senha + "," + dtNascimento + "," + rg + "," + telefone + ")";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                cmd.ExecuteNonQuery();
                conexao.Close();

                return "";
            }
            catch (SqlException)
            {
                return "Problemas com acesso ao banco de dados!!!";
            }
            catch (Exception)
            {
                return "Erro desconhecido!!!";
            }
        }

        public string select(string email, string senha)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader leitor;

                cmd.CommandText = "select * from usuario where email =" + email + ", senha=" + senha;
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                leitor = cmd.ExecuteReader();

                if (leitor.HasRows)
                {
                    return "";
                }
                else
                {
                    return "Email ou senha incorretos!!!";
                }
                conexao.Close();
            }
            catch (SqlException)
            {
                return "Problemas com acesso ao banco de dados!!!";
            }
            catch (Exception)
            {
                return "Erro desconhecido!!!";
            }
        }
    }
}