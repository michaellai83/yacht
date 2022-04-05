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
    public partial class Back_NewsEdit : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                shownews();
            }
        }

        private void shownews()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  NewsTest01 WHERE (id = @id)";
            connection.Open();
            
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            
            while (dataReader.Read())
            {
                Lab_title.Text = dataReader["title"].ToString();
                Lab_Main.Text = (HttpUtility.HtmlDecode(dataReader["main"].ToString()));
                TextBox1.Text = (HttpUtility.HtmlDecode(dataReader["main"].ToString()));
            }
            connection.Close();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"UPDATE NewsTest01 SET main = @main WHERE ( id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@main", HttpUtility.HtmlEncode(TextBox1.Text.Trim()));
            command.ExecuteNonQuery();
            connection.Close();
            Label1.Visible = true;
            Label1.Text = "修改完畢";
        }

        protected void Btn_Top_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"UPDATE NewsTest01 SET [isTop] = @isTop WHERE ( id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@isTop", "True");
            command.ExecuteNonQuery();
            connection.Close();
            string url = Request.Url.ToString();
            Response.Write($"<script>alert('已經置頂');;location.href='{url}';</script>");
        }

        protected void Btn_CancelTop_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"UPDATE NewsTest01 SET [isTop] = @isTop WHERE ( id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@isTop", "False");
            command.ExecuteNonQuery();
            connection.Close();
            string url = Request.Url.ToString();
            Response.Write($"<script>alert('取消置頂');;location.href='{url}';</script>");
        }

        protected void Btn_Edit_Click(object sender, EventArgs e)
        {
            Lab_Main.Visible = false;
            TextBox1.Visible = true;
            Button1.Visible = true;
        }

        protected void Btn_CancelEdit_Click(object sender, EventArgs e)
        {
            Lab_Main.Visible = true;
            TextBox1.Visible = false;
            Button1.Visible = false;
        }
    }
}