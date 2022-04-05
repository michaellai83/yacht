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
    public partial class Back_YachtsUpload05 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string saveDir = @"\upload\file\";
            string appPath = Request.PhysicalApplicationPath; //取得目錄完整位址
            string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);
            SqlConnection connection = new SqlConnection(SqlName);
            connection.Open();
            String fileName, checkPath;
            fileName = FileUpload1.FileName;
            string tempfileName = fileName;
            checkPath = appPath + saveDir + fileName;
            if (FileUpload1.HasFile)
            {
                foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
                {
                    if (System.IO.File.Exists(checkPath))
                    {
                        int counter = 2;
                        while (System.IO.File.Exists(checkPath))
                        {
                            tempfileName = $"({counter}){fileName}";
                            checkPath = appPath + saveDir + tempfileName;
                            counter++;
                        }
                        fileName = tempfileName;
                    }
                    string filePathName = appPath + saveDir + tempfileName;
                    postedFile.SaveAs(filePathName);
                    SqlCommand command = new SqlCommand();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@yachtid",DropDownList1.SelectedValue);
                    command.Parameters.AddWithValue("@FileName", fileName);
                    command.Parameters.AddWithValue("@FilePath", filePathName);
                    command.CommandText = @"INSERT INTO YACHTS_File(yachtid,FileName, FilePath) VALUES(@yachtid, @FileName, @FilePath)";
                    command.Connection = connection;
                    command.ExecuteNonQuery();

                    Label1.Visible = true;
                    Label1.Text = "上傳成功";
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "上傳失敗";
            }
        }
    }
}