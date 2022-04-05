using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_ForgotPassword : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_ResetPassword_Click(object sender, EventArgs e)
        {
            
            if (Regex.IsMatch(exampleInputEmail.Text.ToString(), "[a-zA-Z0-9_]+@[a-zA-Z0-9._]+"))
            {
                string email = exampleInputEmail.Text.Trim();
                SqlConnection connectioncheckaccount = new SqlConnection(SqlName);
                string sqlcheckaccount = "SELECT * FROM AdminInfo WHERE Email = @Email";

                // 3.創建 command 物件
                SqlCommand commandcheckaccount = new SqlCommand(sqlcheckaccount, connectioncheckaccount);
                commandcheckaccount.Parameters.AddWithValue("@Email", email);
                SqlDataAdapter adapter = new SqlDataAdapter(commandcheckaccount);
                DataTable table = new DataTable();
                adapter.Fill(table);
                if (table.Rows.Count > 0)
                {
                    string id = table.Rows[0]["id"].ToString();
                    RNG rng = new RNG();
                    string Password = rng.GenerateRandomCryptographicKey(8).ToString();
                    PasswordWithSaltHasher pwHasher = new PasswordWithSaltHasher();
                    HashWithSaltResult hashResultSha256 = pwHasher.HashWithSalt(Password, 64, SHA256.Create());
                    string salt = hashResultSha256.Salt;
                    string Savepassword = hashResultSha256.Digest;

                    string sql = $"UPDATE AdminInfo SET Password = @Password, Salt = @Salt  WHERE(id=@id) ";
                    SqlConnection connection = new SqlConnection(SqlName);
                    SqlCommand command = new SqlCommand(sql, connection);
                    connection.Open();
                    command.Parameters.AddWithValue("@id", id);
                    command.Parameters.AddWithValue("@Password", Savepassword);
                    command.Parameters.AddWithValue("@Salt", salt);
                    command.ExecuteNonQuery();
                    connection.Close();


                    Response.Write($"<script>alert('您的新密碼為{Password}');;location.href='Back_ForgotPassword.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('查無此信箱,請先註冊');;location.href='Back_ForgotPassword.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('信箱錯誤');;location.href='Back_ForgotPassword.aspx';</script>");
                return;
            }
            Response.Write("<script>alert('已發送新密碼到您的信箱');;location.href='Back_Login.aspx';</script>");
        }
    }
}