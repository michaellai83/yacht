using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class new_view : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            //showtitle();
            
            //showmain();


            showtitletest();
            showmaintest();
        }

        private void showmaintest()
        {
            if(Session["havepic"].Equals("True"))
            {
                string id = Request.QueryString["id"];
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM NewsTest01_pic WHERE (Newsid = @id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = command.ExecuteReader();
                StringBuilder News_str = new StringBuilder();
                while (dataReader.Read())
                {

                    string filename = dataReader["FileName"].ToString();


                    News_str.Append($"<p><img alt='' src=' UploadTest\\{filename}' style='width: 700px; height: 360px;' /></p>");

                }

                connection.Close();
                Lit_main.Text = News_str.ToString();
            }
            else
            {

            }
        }

        private void showtitletest()
        {
            string id = Request.QueryString["id"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM NewsTest01 WHERE (id = @id) ";
            string title = "";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder News_str = new StringBuilder();
            while (dataReader.Read())
            {
                title = dataReader["title"].ToString();
                string main = HttpUtility.HtmlDecode(dataReader["main"].ToString());
                string havepic = dataReader["havepic"].ToString();
                Session["havepic"] = havepic;
                //string[] titlelist = title.Split(' ');
                News_str.Append($"<h4><span id='ctl00_ContentPlaceHolder1_title'>{title}</span></h4>{main}");


            }

            connection.Close();
            Lit_title.Text = News_str.ToString();
        }

        private void showtitle()
        {
            string id = Request.QueryString["id"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM News WHERE (id = @id) ";
            string title = "";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder News_str = new StringBuilder();
            while (dataReader.Read())
            {

                title = dataReader["title"].ToString();
                //string[] titlelist = title.Split(' ');
                News_str.Append($"<h4><span id='ctl00_ContentPlaceHolder1_title'>{title}</span></h4><p><span style='font-size:16px;'><span style='font-size:22px; '><strong><span style='color:#ff0000;'>Tayana 54</span></strong></span>Stock Boat for sale with &nbsp;a<span style='color:#ff0000;'><span style='font-size:22px;'><span style='font-size:28px;'><kbd><var><strong><cite>special price</cite></strong></var></kbd></span></span></span></span></p>");

               
            }

            connection.Close();
            Lit_title.Text = News_str.ToString();
        }

        
        private void showmain()
        {
            string id = Request.QueryString["id"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM News_pic WHERE (Newsid = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder News_str = new StringBuilder();
            while (dataReader.Read())
            {

                string filename = dataReader["FileName"].ToString();


                News_str.Append($"<p><img alt='' src=' UploadTest\\{filename}' style='width: 700px; height: 360px;' /></p>");

            }

            connection.Close();
           Lit_main.Text = News_str.ToString();
        }
       
    }
}