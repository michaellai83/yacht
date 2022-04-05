using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_Setting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
            string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
            userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
            int AdminId = Myperson.id;
            string id = Convert.ToString(AdminId);
            string Account = Myperson.Account.ToString();
            SqlConnection connectioncheckaccount = new SqlConnection(SqlName);
            string sqlcheckaccount = "SELECT * FROM AdminInfo WHERE Account = @Account";

            // 3.創建 command 物件
            SqlCommand commandcheckaccount = new SqlCommand(sqlcheckaccount, connectioncheckaccount);
            commandcheckaccount.Parameters.AddWithValue("@Account", Account);
            SqlDataAdapter adapter = new SqlDataAdapter(commandcheckaccount);
            DataTable table = new DataTable();
            adapter.Fill(table);
            
            if (table.Rows.Count > 0)
            {
                string InputPaswword = Txt_password.Text.Trim();
                string password = table.Rows[0]["Password"].ToString();
                string salt = table.Rows[0]["Salt"].ToString();
                string sqlpassword = HashWithSaltR(InputPaswword, salt, SHA256.Create()).Digest.ToString();
                if(sqlpassword == password)
                {
                    if (Txt_Newpassword.Text.Trim() == Txt_Secpassword.Text.Trim())
                    {
                        string NewPassword = Txt_Newpassword.Text.Trim();
                        PasswordWithSaltHasher pwHasher = new PasswordWithSaltHasher();
                        HashWithSaltResult hashResultSha256 = pwHasher.HashWithSalt(NewPassword, 64, SHA256.Create());
                        string New_salt = hashResultSha256.Salt;
                        string Savepassword = hashResultSha256.Digest;
                        string sql = $"UPDATE AdminInfo SET Password = @Password, Salt = @Salt  WHERE(id=@id) ";
                        SqlConnection connection = new SqlConnection(SqlName);
                        SqlCommand command = new SqlCommand(sql, connection);
                        connection.Open();
                        command.Parameters.AddWithValue("@id", id);
                        command.Parameters.AddWithValue("@Password",Savepassword);
                        command.Parameters.AddWithValue("@Salt",New_salt);
                        command.ExecuteNonQuery();
                        connection.Close();
                        Response.Write("<script>alert('密碼更新完成');;location.href='Back_Setting.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('兩組密碼不同');;location.href='Back_Setting.aspx';</script>");
                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('密碼錯誤');;location.href='Back_Setting.aspx';</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('找不到資料');;location.href='Back_Setting.aspx';</script>");
            }

            


        }
        public HashWithSaltResult HashWithSaltR(string password, string salt, HashAlgorithm hashAlgo)
        {
            //讓 密碼 + salt 去湊合 看有沒有等於 
            byte[] saltBytes = Convert.FromBase64String(salt);
            byte[] passwordAsBytes = Encoding.UTF8.GetBytes(password);
            List<byte> passwordWithSaltBytes = new List<byte>();
            passwordWithSaltBytes.AddRange(passwordAsBytes);
            passwordWithSaltBytes.AddRange(saltBytes);
            byte[] digestBytes = hashAlgo.ComputeHash(passwordWithSaltBytes.ToArray());
            return new HashWithSaltResult(Convert.ToBase64String(saltBytes), Convert.ToBase64String(digestBytes));
        }
    }
}