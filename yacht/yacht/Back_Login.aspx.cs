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
    public partial class Back_Login : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if( Request.Cookies["ckA"] != null)
                //if( Request.Cookies["ckA"] != null && Request.Cookies["ckP"] != null) //判斷有沒有cookie
                {
                    exampleInputEmail.Text = Request.Cookies["ckA"].Value;
                    //exampleInputPassword.Text = Request.Cookies["ckP"].Value;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Login_Account = exampleInputEmail.Text.Trim();
            string Login_Password = exampleInputPassword.Text.Trim();
            SqlConnection connection = new SqlConnection(SqlName);
            // 2.sql語法 (@參數化避免隱碼攻擊)
            string sqlcheckaccount = "SELECT * FROM AdminInfo WHERE Account = @Account";

            // 3.創建 command 物件
            SqlCommand commandcheckaccount = new SqlCommand(sqlcheckaccount, connection);
            commandcheckaccount.Parameters.AddWithValue("@Account", Login_Account);
            SqlDataAdapter adapter = new SqlDataAdapter(commandcheckaccount);
            DataTable table = new DataTable();
            adapter.Fill(table);
            //有找到資料
            if (table.Rows.Count > 0)
            {
                string password = table.Rows[0]["Password"].ToString();
                string salt = table.Rows[0]["Salt"].ToString();
                string sqlpassword = HashWithSaltR(Login_Password, salt, SHA256.Create()).Digest.ToString();

                if (password == sqlpassword)
                {
                    userinformation Userinfor = new userinformation();
                    Userinfor.id = Convert.ToInt32(table.Rows[0]["id"].ToString());
                    Userinfor.Account = table.Rows[0]["Account"].ToString();
                    Userinfor.Authority = table.Rows[0]["Authority"].ToString();
                    Userinfor.userFirstnamename = table.Rows[0]["userFirstname"].ToString();
                    Userinfor.userLastname = table.Rows[0]["userLastname"].ToString();
                    Userinfor.Btn_Yacht = table.Rows[0]["Btn_Yacht"].ToString();
                    Userinfor.Btn_AddYacht = table.Rows[0]["Btn_AddYacht"].ToString(); 
                    Userinfor.Btn_AddNews = table.Rows[0]["Btn_AddNews"].ToString(); 
                    Userinfor.Btn_Company = table.Rows[0]["Btn_Company"].ToString();
                    Userinfor.Btn_Dealers = table.Rows[0]["Btn_Dealers"].ToString();

                    string userData = JsonConvert.SerializeObject(Userinfor);

                    SetAuthenTicket(userData, exampleInputEmail.Text.Trim());
                    //Response.Write("<script>alert('登入成功');;location.href='Back_index.aspx';</script>");
                    if (customCheck.Checked)//記住我選取
                    {
                        HttpCookie cookieAccount = new HttpCookie("ckA",Login_Account); //建立cookie
                       // HttpCookie cookiePassword = new HttpCookie("ckP",Login_Password);
                        cookieAccount.Expires = DateTime.Now.AddHours(1);//設定到期時間
                        //cookiePassword.Expires = DateTime.Now.AddHours(1);
                        Response.Cookies.Add(cookieAccount);
                        //Response.Cookies.Add(cookiePassword);
                    }
                    Response.Write("<script>alert('登入成功');;location.href='AuthorityCheck.ashx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('密碼錯誤');;location.href='Back_Login.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('查無此帳號');;location.href='Back_Login.aspx';</script>");
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

        void SetAuthenTicket(string userData, string userID)
        {
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, userID, DateTime.Now, DateTime.Now.AddHours(1), false, userData);
            string encryptedTicket = FormsAuthentication.Encrypt(ticket);

            HttpCookie authenticationcookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
            authenticationcookie.Expires = DateTime.Now.AddMinutes(10);
            Response.Cookies.Add(authenticationcookie);
        }
    }
}