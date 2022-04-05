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
    public partial class Back_YachtsUpload02 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_YachtsUpload01.aspx");
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    string saveDir = @"\UploadTest\";
        //    //取得目錄完整位置
        //    string appPath = Request.PhysicalApplicationPath;
        //    string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);

        //    if (FileUpload1.HasFiles)
        //    {

        //        Label1.Visible = true;
        //        Label1.Text = "成功上傳";


        //    }
        //    else
        //    {
        //        Label1.Visible = true;
        //        Label1.Text = "上傳失敗";
        //    }


        //    string saveDiv = @"\UploadTest\";
        //    //string appPath = Request.PhysicalApplicationPath;
        //    string fileName, checkPath;
        //    fileName = FileUpload1.FileName;
        //    string tempfileName = fileName;
        //    checkPath = appPath + saveDiv + fileName;
        //    if (System.IO.File.Exists(checkPath))//避免檔案重複儲存
        //    {
        //        int counter = 2;
        //        while (System.IO.File.Exists(checkPath))
        //        {
        //            tempfileName = "(" + counter.ToString() + ")" + fileName;
        //            checkPath = appPath + saveDiv + tempfileName;
        //            counter++;
        //        }
        //        fileName = tempfileName;
        //        Image1.ImageUrl = @"~\UploadTest\" + fileName;
        //    }
        //    string filePathName = appPath + saveDiv + tempfileName;
        //    string imageName = @"~\UploadTest\" + FileUpload1.FileName;
        //    Image1.ImageUrl = @"~\UploadTest\" + fileName;

        //    FileUpload1.SaveAs(filePathName);

        //    SqlConnection connection = new SqlConnection(SqlName);
        //    string sql = "INSERT INTO YACHTS_dim (yachtid, Hulllength, LWL, BMAX, Standarddraft, Ballast, Displacement, Sailarea, Cutter, FileName, FilePath ) Values (@yachtid, @Hulllength, @LWL, @BMAX, @Standarddraft, @Ballast, @Displacement, @Sailarea, @Cutter, @FileName, @FilePath)";

        //    SqlCommand command = new SqlCommand(sql, connection);
        //    connection.Open();
        //    command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
        //    command.Parameters.Add("@Hulllength", SqlDbType.NVarChar).Value = Hulllength.Text.Trim();
        //    command.Parameters.Add("@LWL", SqlDbType.NVarChar).Value = Lwl.Text.Trim();
        //    command.Parameters.Add("@BMAX", SqlDbType.NVarChar).Value = Bmax.Text.Trim();
        //    command.Parameters.Add("@Standarddraft", SqlDbType.NVarChar).Value = Standarddraft.Text.Trim();
        //    command.Parameters.Add("@Ballast", SqlDbType.NVarChar).Value = Ballast.Text.Trim();
        //    command.Parameters.Add("@Displacement", SqlDbType.NVarChar).Value = Displacement.Text.Trim();
        //    command.Parameters.Add("@Sailarea", SqlDbType.NVarChar).Value = Sailarea.Text.Trim();
        //    command.Parameters.Add("@Cutter", SqlDbType.NVarChar).Value = Cutter.Text.Trim();

        //    command.Parameters.AddWithValue("@FileName", FileUpload1.FileName);
        //    command.Parameters.AddWithValue("@FilePath", filePathName);

        //    command.ExecuteNonQuery();

        //    connection.Close();

        //    Response.Redirect("Back_YachtsUpload02.aspx");
        //}

        protected void Button3_Click(object sender, EventArgs e)
        {

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

            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Layout (yachtid, FileName, FilePath ) Values(@yachtid, @FileName, @FilePath) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList2.SelectedValue;

            command.Parameters.AddWithValue("@FileName", FileUpload2.FileName);
            command.Parameters.AddWithValue("@FilePath", filePathName);

            command.ExecuteNonQuery();

            connection.Close();

            //Response.Redirect("Back_YachtsUpload02.aspx");
            Response.Redirect("Back_YachtsSpecification.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Back_YachtsUpload03.aspx");
            Response.Redirect("Back_YachtsSpecification.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_YachtsUpload04.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_DIMENSIONS.aspx");
        }
    }
}