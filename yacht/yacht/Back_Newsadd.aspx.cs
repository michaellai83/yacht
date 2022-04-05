using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_Newsadd : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void title_btn_Click(object sender, EventArgs e)
        {
            

            //資料庫NewsTest01
            string saveDir = @"\UploadTest\";
            //取得目錄完整位置
            string appPath = Request.PhysicalApplicationPath;
            string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload2.FileName);

            if (FileUpload2.HasFiles)
            {

                Label1.Visible = true;
                Label1.Text = "成功上傳";


            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "上傳失敗";
            }






            string title = Textitle.Text.Trim();
            string main = HttpUtility.HtmlEncode(Textmain.Text).Trim();
            string time = Textime.Text.ToString();
            string havepic = RadioButtonList1.SelectedValue.ToString();


            if (title != "")
            {
                SqlConnection connection = new SqlConnection(SqlName);
                string saveDiv = @"\UploadTest\";
                //string appPath = Request.PhysicalApplicationPath;
                string fileName, checkPath;
                fileName = FileUpload2.FileName;
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
                    Image2.ImageUrl = @"~\UploadTest\" + fileName;
                }
                string filePathName = appPath + saveDiv + tempfileName;
                string imageName = @"~\UploadTest\" + FileUpload2.FileName;
                Image2.ImageUrl = @"~\UploadTest\" + fileName;

                FileUpload2.SaveAs(filePathName);
                string sql = $"INSERT INTO NewsTest01(title, main, havepic, initdate, titleFileName,titleFilePath,isTop) VALUES (@title, @main, @havepic, @initdate, @titleFileName,@titleFilePath,@isTop)";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();

                command.Parameters.Add("@title", SqlDbType.NVarChar).Value = title;
                command.Parameters.Add("@main", SqlDbType.NVarChar).Value = main;
                command.Parameters.Add("@havepic", SqlDbType.NVarChar).Value = havepic;
                command.Parameters.Add("@initdate", SqlDbType.NVarChar).Value = time;

                command.Parameters.AddWithValue("@titleFileName", FileUpload2.FileName);
                command.Parameters.AddWithValue("@titleFilePath", filePathName);
                command.Parameters.AddWithValue("@isTop", "False");
                command.ExecuteNonQuery();
                connection.Close();
                Response.Write($"<script>alert('已新增資料');;location.href='Back_Newsadd.aspx';</script>");

            }
            else
            {
                Label1.Text = "請填寫主題";
                Label1.Visible = true;
            }

        }

        protected void upload_Click(object sender, EventArgs e)
        {
            

            //資料表NewsTest01pic語法
            string UserID = DropDownList1.SelectedValue.ToString();
            string saveDir = @"\UploadTest\";
            //取得目錄完整位置
            string appPath = Request.PhysicalApplicationPath;
            string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);

            if (FileUpload1.HasFiles)
            {

                //SubmitFile(UserID, FileUpload1.PostedFiles);
                Label1.Text = "成功上傳";


            }
            else
            {
                Label1.Text = "上傳失敗";
            }
            SqlConnection connection = new SqlConnection(SqlName);

            connection.Open();
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
                Image1.ImageUrl = @"~\UploadTest\" + fileName;
            }
            string filePathName = appPath + saveDiv + tempfileName;
            string imageName = @"~\UploadTest\" + FileUpload1.FileName;
            Image1.ImageUrl = @"~\UploadTest\" + fileName;
            //Image1.ImageUrl = imageName;
            FileUpload1.SaveAs(filePathName);
            string sql = @"INSERT INTO NewsTest01_pic(Newsid,FileName,FilePath) Values(@ID,@FileName,@FilePath)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Clear();//清空參數
            command.Parameters.Add("@ID", SqlDbType.Int).Value = UserID;
            command.Parameters.AddWithValue("@FileName", FileUpload1.FileName);
            command.Parameters.AddWithValue("@FilePath", filePathName);
            command.ExecuteNonQuery();

            connection.Close();
        }
    }
}