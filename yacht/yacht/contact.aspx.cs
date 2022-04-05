using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using MailKit.Net.Smtp;
using MimeKit;

namespace yacht
{
    public partial class contact : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void ctl00_ContentPlaceHolder1_ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string name = ctl00_ContentPlaceHolder1_Name.Text.ToString();
            
            string phone = ctl00_ContentPlaceHolder1_Phone.Text.ToString();
            if( name != "" && ctl00_ContentPlaceHolder1_Email.Text != null && phone != "")
            {
                if (Regex.IsMatch(ctl00_ContentPlaceHolder1_Email.Text.ToString(), "[a-zA-Z0-9_]+@[a-zA-Z0-9._]+"))
                {
                    string email = ctl00_ContentPlaceHolder1_Email.Text.ToString();
                    if(main.Text != null)
                    {
                        SqlConnection connection = new SqlConnection(SqlName);
                        string sql = $"INSERT INTO customer(Name, Email, Phone, Country, item, comments) VALUES (@Name, @Email, @Phone, @Country, @item, @comments)";
                        SqlCommand command = new SqlCommand(sql, connection);
                        connection.Open();
                        //command.Parameters.Add("@Country", SqlDbType.NVarChar).Value = country;
                        command.Parameters.Add("@Name", SqlDbType.NVarChar).Value = name;
                        command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
                        command.Parameters.Add("@Phone", SqlDbType.NVarChar).Value = phone;
                        command.Parameters.Add("@Country", SqlDbType.NVarChar).Value = ctl00_ContentPlaceHolder1_Country.SelectedValue.ToString();
                        command.Parameters.Add("@item", SqlDbType.NVarChar).Value = ctl00_ContentPlaceHolder1_Yachts.SelectedValue.ToString();
                        command.Parameters.Add("@comments", SqlDbType.NVarChar).Value = main.Text.ToString();
                       
                        command.ExecuteNonQuery();
                        connection.Close();
                        sendmail();
                        //Response.Write($"<script>alert('已寄信');;location.href='contact.aspx';</script>");
                    }
                    else
                    {
                        Label1.Text = "請填入內容";
                    }
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "信箱錯誤";
                }
                
            }
            else if ( name == "" || ctl00_ContentPlaceHolder1_Email.Text == null || phone == "")
            {
                
            }
            //Response.Write($"<script>alert('已寄信');;location.href='contact.aspx';</script>");
            
            
        }

        public void sendmail()
        {
            //宣告使用 MimeMessage
            var message = new MimeMessage();
            //設定發信地址 ("發信人", "發信 email")
            message.From.Add(new MailboxAddress("TayanaYacht", "michaelbmw520@gmail.com"));
            //設定收信地址 ("收信人", "收信 email")
            message.To.Add(new MailboxAddress(ctl00_ContentPlaceHolder1_Name.Text.Trim(), ctl00_ContentPlaceHolder1_Email.Text.Trim()));
            //寄件副本email
            message.Cc.Add(new MailboxAddress("收信人名稱", "michaelbmw520@gmail.com"));
            //設定優先權
            //message.Priority = MessagePriority.Normal;
            //信件標題
            message.Subject = "TayanaYacht Auto Email";
            //建立 html 郵件格式
            BodyBuilder bodyBuilder = new BodyBuilder();
            bodyBuilder.HtmlBody =
                "<h1>Thank you for contacting us!</h1>" +
                $"<h3>Name : {ctl00_ContentPlaceHolder1_Name.Text.Trim()}</h3>" +
                $"<h3>Email : {ctl00_ContentPlaceHolder1_Email.Text.Trim()}</h3>" +
                $"<h3>Phone : {ctl00_ContentPlaceHolder1_Phone.Text.Trim()}</h3>" +
                $"<h3>Country : {ctl00_ContentPlaceHolder1_Country.SelectedValue}</h3>" +
                $"<h3>Type : {ctl00_ContentPlaceHolder1_Yachts.SelectedValue}</h3>" +
                $"<h3>Comments : </h3>" +
                $"<p>{main.Text.Trim()}</p>";
            //設定郵件內容
            message.Body = bodyBuilder.ToMessageBody(); //轉成郵件內容格式

            using (var client = new SmtpClient())
            {
                //有開防毒時需設定 false 關閉檢查
                client.CheckCertificateRevocation = false;
                //設定連線 gmail ("smtp Server", Port, SSL加密) 
                client.Connect("smtp.gmail.com", 587, false); // localhost 測試使用加密需先關閉 

                // Note: only needed if the SMTP server requires authentication
                //這裡要自己去申請密碼 不要外流
                client.Authenticate("michaelbmw520@gmail.com", "atibywlkrblacmsy");
                //發信
                client.Send(message);
                //結束連線
                client.Disconnect(true);
            }
        }

        
    }
}