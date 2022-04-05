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
    public partial class Back_YachtsUpload04 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
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
            SqlConnection connection = new SqlConnection(SqlName);
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

            FileUpload1.SaveAs(filePathName);

            SqlConnection connectionHaveReapeat = new SqlConnection(SqlName);
            string sqlHaveReapeat = $"SELECT *FROM  YACHTS_Pic WHERE( yachtid=@yachtid) ";
            SqlCommand commandHaveReapeat = new SqlCommand(sqlHaveReapeat, connectionHaveReapeat);
            connectionHaveReapeat.Open();
            commandHaveReapeat.Parameters.AddWithValue("@yachtid", DropDownList1.SelectedValue);
            SqlDataReader dataReader = commandHaveReapeat.ExecuteReader();
            if (dataReader.HasRows)
            {
                string sql = $"UPDATE YACHTS_Pic  SET yachtid=@yachtid, FileName=@FileName, FilePath=@FilePath WHERE(yachtid=@yachtid) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;

                command.Parameters.AddWithValue("@FileName", FileUpload1.FileName);
                command.Parameters.AddWithValue("@FilePath", filePathName);
                

                command.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                string sql = $"INSERT INTO YACHTS_Pic(yachtid, FileName, FilePath, isTop) VALUES (@yachtid, @FileName,@FilePath, @isTop) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;

                command.Parameters.AddWithValue("@FileName", FileUpload1.FileName);
                command.Parameters.AddWithValue("@FilePath", filePathName);
                command.Parameters.AddWithValue("@isTop", "False");

                command.ExecuteNonQuery();
                connection.Close();
            }

            
            //Response.Write($"<script>alert('已新增資料');;location.href='Yachtstype_Manger04.aspx';</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_YachtsUpload01.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //相簿區
            string saveDir = @"\UploadPicBox\";
            //取得目錄完整位置
            string appPath = Request.PhysicalApplicationPath;
            string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);

            if (FileUpload2.HasFiles)
            {

                Label2.Visible = true;
                Label2.Text = "成功上傳";


            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "上傳失敗";
            }
            SqlConnection connection = new SqlConnection(SqlName);
            string saveDiv = @"\UploadPicBox\";
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
                Image2.ImageUrl = @"~\UploadPicBox\" + fileName;
            }
            string filePathName = appPath + saveDiv + tempfileName;
            string imageName = @"~\UploadPicBox\" + FileUpload2.FileName;
            Image2.ImageUrl = @"~\UploadPicBox\" + fileName;

            FileUpload2.SaveAs(filePathName);
            string sql = $"INSERT INTO YACHTS_picbox(yachtid, FileName, FilePath) VALUES (@yachtid, @FileName,@FilePath)";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();

            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;

            command.Parameters.AddWithValue("@FileName", FileUpload2.FileName);
            command.Parameters.AddWithValue("@FilePath", filePathName);
            
            command.ExecuteNonQuery();
            connection.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Back_YachtsUpload03.aspx");
            Response.Redirect("Back_YachtsSpecification.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Back_YachtsUpload02.aspx");
            Response.Redirect("Back_DIMENSIONS.aspx");
        }
    }
}