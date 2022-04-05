using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_AdminAuthority : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showtitle();
                showcheck();
            }
        }

        private void showcheck()
        {
            string id = Request.QueryString["ID"].ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  AdminInfo WHERE( id=@id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            
            if (dataReader.Read())
            {
                CheckBox1.Checked = (dataReader["Btn_Yacht"].ToString()).Equals("True");
                CheckBox2.Checked = (dataReader["Btn_AddYacht"].ToString()).Equals("True");
                CheckBox3.Checked = (dataReader["Btn_AddNews"].ToString()).Equals("True");
                CheckBox4.Checked = (dataReader["Btn_Company"].ToString()).Equals("True");
                CheckBox5.Checked = (dataReader["Btn_Dealers"].ToString()).Equals("True");
            }
            connection.Close();
        }

        private void showtitle()
        {
            string id = Request.QueryString["ID"].ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  AdminInfo WHERE( id=@id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            string title = ""; 
            if (dataReader.Read())
            {
                title = dataReader["Authority"].ToString();
            }
            connection.Close();
            if (title.Equals("High"))
            {
                Lab_title.Text = "權限最高";
                //CheckBox1.Visible = false;
                //CheckBox2.Visible = false;
                //CheckBox3.Visible = false;
                //CheckBox4.Visible = false;
                //CheckBox5.Visible = false;
                //checkall.Visible = false;
            }
            else
            {
                Lab_title.Text = "權限低";
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_Yacht =@Btn_Yacht  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_Yacht", "True");
                command.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_Yacht =@Btn_Yacht  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_Yacht", "False");
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_AddYacht =@Btn_AddYacht  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_AddYacht", "True");
                command.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_AddYacht =@Btn_AddYacht  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_AddYacht", "False");
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked)
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_AddNews =@Btn_AddNews  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_AddNews", "True");
                command.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_AddNews =@Btn_AddNews  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_AddNews", "False");
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox4.Checked)
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_Company =@Btn_Company  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_Company", "True");
                command.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_Company =@Btn_Company  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_Company", "False");
                command.ExecuteNonQuery();
                connection.Close();
            }
            
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox5.Checked)
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_Dealers =@Btn_Dealers  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_Dealers", "True");
                command.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_Dealers =@Btn_Dealers  WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_Dealers", "False");
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void checkall_CheckedChanged(object sender, EventArgs e)
        {
            if (checkall.Checked)
            {
                CheckBox1.Checked = true;
                CheckBox2.Checked = true;
                CheckBox3.Checked = true;
                CheckBox4.Checked = true;
                CheckBox5.Checked = true;
                string id = Request.QueryString["ID"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  AdminInfo SET  Btn_Dealers =@Btn_Dealers, Btn_Company = @Btn_Company, Btn_AddNews = @Btn_AddNews, Btn_AddYacht =@Btn_AddYacht, Btn_Yacht =@Btn_Yacht WHERE( id=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@Btn_Yacht", "True");
                command.Parameters.AddWithValue("@Btn_AddYacht", "True");
                command.Parameters.AddWithValue("@Btn_AddNews", "True");
                command.Parameters.AddWithValue("@Btn_Company", "True");
                command.Parameters.AddWithValue("@Btn_Dealers", "True");
                command.ExecuteNonQuery();
                connection.Close();
            }
            //else
            //{
            //    CheckBox1.Checked = false;
            //    CheckBox2.Checked = false;
            //    CheckBox3.Checked = false;
            //    CheckBox4.Checked = false;
            //    CheckBox5.Checked = false;
            //    string id = Request.QueryString["ID"].ToString();
            //    SqlConnection connection = new SqlConnection(SqlName);
            //    string sql = $"UPDATE  AdminInfo SET  Btn_Dealers =@Btn_Dealers, Btn_Company = @Btn_Company, Btn_AddNews = @Btn_AddNews, Btn_AddYacht =@Btn_AddYacht, Btn_Yacht =@Btn_Yacht WHERE( id=@id) ";
            //    SqlCommand command = new SqlCommand(sql, connection);
            //    connection.Open();
            //    command.Parameters.AddWithValue("@id", id);
            //    command.Parameters.AddWithValue("@Btn_Yacht", "False");
            //    command.Parameters.AddWithValue("@Btn_AddYacht", "False");
            //    command.Parameters.AddWithValue("@Btn_AddNews", "False");
            //    command.Parameters.AddWithValue("@Btn_Company", "False");
            //    command.Parameters.AddWithValue("@Btn_Dealers", "False");
            //    command.ExecuteNonQuery();
            //    connection.Close();
            //}
        }
    }
}