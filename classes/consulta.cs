using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Happy_Mind.classes
{
    public class consulta
    {
        private int idP, idU;
        private string data, hora;
        public string[] horas = new string[24];

        SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString.ToString());

        public void construtor(int idPC, int idUC, string dataC, string horaC)
        {
            idP = idPC;
            idU = idUC;
            data = dataC;
            hora = horaC;
        }

        public string inserir()
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "insert into consulta values(" + idP + "," + idU + "," + Convert.ToDateTime(data) + "," + hora + ")";
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
        public string selectComData(string dataS)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader leitor;

                cmd.CommandText = "select * from where dataConsulta = " + Convert.ToDateTime(dataS) + " and idP =" + idP;
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                leitor = cmd.ExecuteReader();

                if (leitor.HasRows)
                {
                    int cont = 1;
                    while (leitor.Read())
                    {
                        horas[cont] = leitor.GetString(8);
                        cont++;
                    }
                }

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
    }
}