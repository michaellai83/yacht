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
    public partial class Yachts_Layout : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            showleft();
            showtopa();
            showmaintopa();
            showmain();
            showpicbox();
        }
        private void showpicbox()
        {
            if (Request.QueryString["id"] == null)
            {
                SqlConnection connection_id = new SqlConnection(SqlName);
                string sql_id = "SELECT *FROM YACHTS";
                SqlCommand command_id = new SqlCommand(sql_id, connection_id);
                connection_id.Open();
                SqlDataReader dataReader_id = command_id.ExecuteReader();
                dataReader_id.Read();
                string ID = dataReader_id["id"].ToString();
                connection_id.Close();

                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS_picbox WHERE (yachtid = @yachtid) ORDER BY [order]";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder str_picbox = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@yachtid", ID);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string pic = dataReader["FileName"].ToString();

                    str_picbox.Append($@"<li><a href='UploadPicBox/{pic}'><img src='UploadPicBox/{pic}' class='image0' width='158px' height='63px' /></a></li>");
                }

                connection.Close();


                Lite_picbox.Text = str_picbox.ToString();
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS_picbox WHERE (yachtid = @yachtid) ORDER BY [order]";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder str_picbox = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@yachtid", id);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string pic = dataReader["FileName"].ToString();

                    str_picbox.Append($@"<li><a href='UploadPicBox/{pic}'><img src='UploadPicBox/{pic}' class='image0' width='158px' height='63px' /></a></li>");
                }

                connection.Close();


                Lite_picbox.Text = str_picbox.ToString();
            }
        }
        private void showmain()
        {
            if (Request.QueryString["id"] == null)
            {

                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS_Layout ";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                dataReader.Read();
                string filename = dataReader["FileName"].ToString();

                News_str.Append($"<li><img src='UploadTest\\{filename}' alt=' & quot; &quot; '' /></li>");

                connection.Close();
                Lit_main.Text = News_str.ToString();
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS_Layout WHERE (yachtid =@yachtid)";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@yachtid", id);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string filename = dataReader["FileName"].ToString();

                    News_str.Append($"<li><img src='UploadTest\\{filename}' alt=' & quot; &quot; '' / width='609px' heigth='823px'></li>");
                }
                

                

                connection.Close();

                Lit_main.Text = News_str.ToString();
            }
        }
        private void showmaintopa()
        {
            if (Request.QueryString["id"] == null)
            {
                SqlConnection connection_id = new SqlConnection(SqlName);
                string sql_id = "SELECT *FROM YACHTS";
                SqlCommand command_id = new SqlCommand(sql_id, connection_id);
                connection_id.Open();
                SqlDataReader dataReader_id = command_id.ExecuteReader();
                dataReader_id.Read();
                string ID = dataReader_id["id"].ToString();
                connection_id.Close();
                StringBuilder str_maintopa = new StringBuilder();
                str_maintopa.Append($"<li><a class='menu_yli01' href='Yachts_OverView.aspx?id={ID}'>Interior</a></li><li><a class='menu_yli02' href='Yachts_Layout.aspx?id={ID}'>Layout & deck plan</a></li><li><a class='menu_yli03' href='Yachts_Specification02.aspx?id={ID}'>Specification</a></li>");
                Lit_maintopa.Text = str_maintopa.ToString();
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                StringBuilder str_maintopa = new StringBuilder();
                str_maintopa.Append($"<li><a class='menu_yli01' href='Yachts_OverView.aspx?id={id}'>Interior</a></li><li><a class='menu_yli02' href='Yachts_Layout.aspx?id={id}'>Layout & deck plan</a></li><li><a class='menu_yli03' href='Yachts_Specification02.aspx?id={id}'>Specification</a></li>");
                Lit_maintopa.Text = str_maintopa.ToString();
            }
        }

        private void showleft()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "SELECT *FROM YACHTS";
            SqlCommand command = new SqlCommand(sql, connection);

            StringBuilder News_str = new StringBuilder();
            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                string lefttitle = dataReader["name"].ToString();
                string id = dataReader["id"].ToString();
                News_str.Append($"<li><a href='Yachts_Layout.aspx?id={id}'>{lefttitle}</a></li>");
            }

            connection.Close();
            Lit_lift.Text = News_str.ToString();

        }

        private void showtopa()
        {
            if (Request.QueryString["id"] == null)
            {
                Lit_topa.Text = "<a href='Yachts_Layout.aspx'><span class='on1'>Tayana 37</span></a>";
                Lab_title.Text = "Tayana 37"; 
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS WHERE (id =@id)";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string title = dataReader["name"].ToString();
                    Session["title"] = title.Remove(0, 6);

                    News_str.Append($"<a href='Yachts_Layout.aspx?id={id}'><span class='on1'>{title}</span></a>");
                }

                connection.Close();
                Lit_topa.Text = News_str.ToString();
                Lab_title.Text = "Tayana" + Session["title"].ToString();
            }
        }

    }
}