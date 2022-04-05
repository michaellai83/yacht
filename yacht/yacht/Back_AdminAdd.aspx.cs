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
    public partial class Back_AdminAdd : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ( exampleFirstName.Text != "" && exampleLastName.Text != "" && exampleInputEmail.Text != "" && exampleInputPassword.Text != "" && exampleRepeatPassword.Text != "")
            {
                string Firstname = exampleFirstName.Text.Trim();
                string Lastname = exampleLastName.Text.Trim();
                string Email = exampleInputEmail.Text.Trim();
                
                if (Regex.IsMatch(exampleInputEmail.Text.ToString(), "[a-zA-Z0-9_]+@[a-zA-Z0-9._]+"))
                {
                    Email = exampleInputEmail.Text.Trim();
                }
                else
                {
                    Response.Write("<script>alert('信箱錯誤');;location.href='Back_AdminAdd.aspx';</script>");
                    return;
                }
                string Password = exampleInputPassword.Text.Trim();
                string Repassword = exampleRepeatPassword.Text.Trim();
                if (Password != Repassword)
                {
                    Response.Write("<script>alert('兩組密碼不同');;location.href='Back_AdminAdd.aspx';</script>");
                }


                PasswordWithSaltHasher pwHasher = new PasswordWithSaltHasher();
                HashWithSaltResult hashResultSha256 = pwHasher.HashWithSalt(Password, 64, SHA256.Create());
                string salt = hashResultSha256.Salt;
                string Savepassword = hashResultSha256.Digest;


                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"INSERT INTO AdminInfo(Account, Password, Salt, userFirstname, userLastname, Email, Authority, [Btn_Yacht], [Btn_AddYacht], [Btn_AddNews], [Btn_Company], [Btn_Dealers]) VALUES (@Account, @Password, @Salt, @userFirstname, @userLastname, @Email, @Authority, @Btn_Yacht, @Btn_AddYacht, @Btn_AddNews, @Btn_Company, @Btn_Dealers)";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.Add("@Account", SqlDbType.NVarChar).Value = Email;
                command.Parameters.Add("@Password", SqlDbType.NVarChar).Value = Savepassword;
                command.Parameters.Add("@Salt", SqlDbType.NVarChar).Value = salt;
                command.Parameters.Add("@userFirstname", SqlDbType.NVarChar).Value = Firstname;
                command.Parameters.Add("@userLastname", SqlDbType.NVarChar).Value = Lastname;
                command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = Email;
                command.Parameters.Add("@Authority", SqlDbType.NVarChar).Value = "Low";
                command.Parameters.AddWithValue("@Btn_Yacht","False");
                command.Parameters.AddWithValue("@Btn_AddYacht", "False");
                command.Parameters.AddWithValue("@Btn_AddNews", "False");
                command.Parameters.AddWithValue("@Btn_Company", "False");
                command.Parameters.AddWithValue("@Btn_Dealers", "False");

                command.ExecuteNonQuery();
                connection.Close();
                Response.Write($"<script>alert('已創立帳號');;location.href='Back_Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('請勿空白');;location.href='Back_AdminAdd.aspx';</script>");
            }
            
        }
    }
}