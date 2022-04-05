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
    public partial class Dealers_Mangeraddbase : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Country_sub_Click(object sender, EventArgs e)
        {
            string country = DropDownList1.SelectedValue.ToString();
            string city = City.Text.Trim();
            string saletype = Saletype.Text.Trim();
            string contact = Contact.Text.Trim();
            string add = Add.Text.Trim();
            string tel = Tel.Text.Trim();
            string fax = Fax.Text.Trim();
            string email = Email.Text.Trim();
            string saveDir = @"\UploadTest\";
            //取得目錄完整位置
            string appPath = Request.PhysicalApplicationPath;
            string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);
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
            //Label1.Text = country;
            //Label1.Visible = true;
            if (city != "" && saletype != "" && contact != "" && add != "" && tel != "" && email != "")
            {
                if (fax != "")
                {


                    SqlConnection connection = new SqlConnection(SqlName);
                    string sql = $"INSERT INTO dealers(Countryid, City, Salestype, Contact, Address, Tel, Fax, Email, FileName, FilePath) VALUES (@Countryid, @City, @Salestype, @Contact, @Address, @Tel, @Fax, @Email, @FileName, @FilePath)";
                    SqlCommand command = new SqlCommand(sql, connection);
                    connection.Open();
                    command.Parameters.Add("@Countryid", SqlDbType.NVarChar).Value = country;
                    command.Parameters.Add("@City", SqlDbType.NVarChar).Value = city;
                    command.Parameters.Add("@Salestype", SqlDbType.NVarChar).Value = saletype;
                    command.Parameters.Add("@Contact", SqlDbType.NVarChar).Value = contact;
                    command.Parameters.Add("@Address", SqlDbType.NVarChar).Value = add;
                    command.Parameters.Add("@Tel", SqlDbType.NVarChar).Value = tel;
                    command.Parameters.Add("@Fax", SqlDbType.NVarChar).Value = fax;
                    command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;

                    command.Parameters.AddWithValue("@FileName", FileUpload1.FileName);
                    command.Parameters.AddWithValue("@FilePath", filePathName);

                    command.ExecuteNonQuery();
                    connection.Close();
                    Response.Write($"<script>alert('已新增資料');;location.href='Dealers_Mangeraddbase.aspx';</script>");
                }
                else
                {
                    SqlConnection connection = new SqlConnection(SqlName);
                    string sql = $"INSERT INTO dealers(Countryid, City, Salestype, Contact, Address, Tel, Fax, Email, FileName, FilePath) VALUES (@Countryid, @City, @Salestype, @Contact, @Address, @Tel, @Fax, @Email, @FileName, @FilePath)";
                    SqlCommand command = new SqlCommand(sql, connection);
                    connection.Open();
                    command.Parameters.Add("@Countryid", SqlDbType.NVarChar).Value = country;
                    command.Parameters.Add("@City", SqlDbType.NVarChar).Value = city;
                    command.Parameters.Add("@Salestype", SqlDbType.NVarChar).Value = saletype;
                    command.Parameters.Add("@Contact", SqlDbType.NVarChar).Value = contact;
                    command.Parameters.Add("@Address", SqlDbType.NVarChar).Value = add;
                    command.Parameters.Add("@Tel", SqlDbType.NVarChar).Value = tel;
                    command.Parameters.Add("@Fax", SqlDbType.NVarChar).Value = "Nodate";
                    command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;

                    command.Parameters.AddWithValue("@FileName", FileUpload1.FileName);
                    command.Parameters.AddWithValue("@FilePath", filePathName);

                    command.ExecuteNonQuery();
                    connection.Close();
                    Response.Write($"<script>alert('已新增資料');;location.href='Dealers_Mangeraddbase.aspx';</script>");
                }

                //Response.Redirect("Dealers_Manger.aspx");
            }
            else if (city == "" || saletype == "" || contact == "" || add == "" || tel == "" || email == "")
            {
                Label1.Visible = true;
                Label1.Text = "請勿空白";
            }

            
        }
    }
}