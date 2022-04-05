using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_Profile : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                showtick();
                showuserpic();
            }

        }

        private void showuserpic()
        {
            string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
            userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
            string id = Convert.ToString(Myperson.id);
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  Admin_Pic WHERE( Adminid=@id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            if (dataReader.Read())
            {
                string img = dataReader["FileName"].ToString();
                Image_userpic.ImageUrl = $@"~\UploadTest\{img}";
            }
            
            connection.Close();
        }

        private void showtick()
        {
            string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
            userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
            string id = Convert.ToString(Myperson.id);
            string Firstname = Myperson.userFirstnamename.ToString();
            string Lastname = Myperson.userLastname.ToString();
            Lab_Firstname.Text = Firstname;
            Lab_Lastname.Text = Lastname;
        }
        protected void Button_Upload_Click(object sender, EventArgs e)
        {
            string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
            userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
            string id = Convert.ToString(Myperson.id);
            
            string saveDir = @"\UploadTest\";
            //取得目錄完整位置
            string appPath = Request.PhysicalApplicationPath;
            string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);

            if (FileUpload1.HasFiles)
            {

                Label1.Visible = true;
                Label1.Text = "成功上傳";


            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "上傳失敗";
            }


            string saveDiv = @"\UploadTest\";
            //string appPath = Request.PhysicalApplicationPath;
            string fileName, checkPath;
            fileName = FileUpload1.FileName;
            string tempfileName = fileName;
            checkPath = appPath + saveDiv + fileName;
            if (System.IO.File.Exists(checkPath))//避免檔案重複儲存
            {
                int counter = 2;
                while (System.IO.File.Exists(checkPath))
                {
                    tempfileName = "(" + counter.ToString() + ")" + fileName;
                    checkPath = appPath + saveDiv + tempfileName;
                    counter++;
                }
                fileName = tempfileName;
                Image_Upload.ImageUrl = @"~\UploadTest\" + fileName;
            }
            string filePathName = appPath + saveDiv + tempfileName;
            string imageName = @"~\UploadTest\" + FileUpload1.FileName;
            Image_Upload.ImageUrl = @"~\UploadTest\" + fileName;

            FileUpload1.SaveAs(filePathName);

            SqlConnection connectionHaveReapeat = new SqlConnection(SqlName);
            string sqlHaveReapeat = $"SELECT *FROM  Admin_Pic WHERE( Adminid=@Adminid) ";
            SqlCommand commandHaveReapeat = new SqlCommand(sqlHaveReapeat, connectionHaveReapeat);
            connectionHaveReapeat.Open();
            commandHaveReapeat.Parameters.AddWithValue("@Adminid", id);
            SqlDataReader dataReader = commandHaveReapeat.ExecuteReader();
            if (dataReader.HasRows)
            {
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  Admin_Pic SET  FileName =@FileName WHERE( Adminid=@id) ";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@id", id);
                connection.Open();

                command.Parameters.Add("@FileName", SqlDbType.NVarChar).Value = fileName;
                command.ExecuteNonQuery();

                connection.Close();
            }
            else
            {
                
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = "INSERT INTO Admin_Pic (Adminid, FileName) Values (@Adminid, @FileName)";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.Add("@Adminid", SqlDbType.NVarChar).Value = id;
                command.Parameters.Add("@FileName", SqlDbType.NVarChar).Value = fileName;
                command.ExecuteNonQuery();

                connection.Close();
            }
            connectionHaveReapeat.Close();

            

            //Response.Redirect("Back_Profile.aspx");
        }
    }
}