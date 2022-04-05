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
    public partial class Back_DealersCountry : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showcountry();
                showdate();

            }
        }


        private void showcountry()
        {

            SqlConnection show_connection = new SqlConnection(SqlName);
            string showsql = "SELECT *FROM dealers_country";
            SqlCommand command = new SqlCommand(showsql, show_connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView2.DataSource = table;
            GridView2.DataBind();
        }

        private void showdate()
        {
            SqlConnection show_connection = new SqlConnection(SqlName);
            string showsql = "SELECT *FROM dealers";
            SqlCommand command = new SqlCommand(showsql, show_connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        //protected void Country_sub_Click(object sender, EventArgs e)
        //{
        //    //string country = Country.Text.ToString();
        //    string city = City.Text.Trim();
        //    string saletype = Saletype.Text.Trim();
        //    string contact = Contact.Text.Trim();
        //    string add = Add.Text.Trim();
        //    string tel = Tel.Text.Trim();
        //    string fax = Fax.Text.Trim();
        //    string email = Email.Text.Trim();

        //    if (city != "" && saletype != "" && contact != "" && add != "" && tel != "" && email != "")
        //    {
        //        if (fax != "")
        //        {
        //            SqlConnection connection = new SqlConnection(SqlName);
        //            string sql = $"INSERT INTO dealers(City, Salestype, Contact, Address, Tel, Fax, Email) VALUES (@City, @Salestype, @Contact, @Address, @Tel, @Fax, @Email)";
        //            SqlCommand command = new SqlCommand(sql, connection);
        //            connection.Open();
        //            //command.Parameters.Add("@Country", SqlDbType.NVarChar).Value = country;
        //            command.Parameters.Add("@City", SqlDbType.NVarChar).Value = city;
        //            command.Parameters.Add("@Salestype", SqlDbType.NVarChar).Value = saletype;
        //            command.Parameters.Add("@Contact", SqlDbType.NVarChar).Value = contact;
        //            command.Parameters.Add("@Address", SqlDbType.NVarChar).Value = add;
        //            command.Parameters.Add("@Tel", SqlDbType.NVarChar).Value = tel;
        //            command.Parameters.Add("@Fax", SqlDbType.NVarChar).Value = fax;
        //            command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
        //            command.ExecuteNonQuery();
        //            connection.Close();
        //            Response.Write($"<script>alert('已新增資料');;location.href='Back_DealersCountry.aspx';</script>");
        //        }
        //        else
        //        {
        //            SqlConnection connection = new SqlConnection(SqlName);
        //            string sql = $"INSERT INTO dealers(City, Salestype, Contact, Address, Tel, Fax, Email) VALUES (@City, @Salestype, @Contact, @Address, @Tel, @Fax, @Email)";
        //            SqlCommand command = new SqlCommand(sql, connection);
        //            connection.Open();
        //            //command.Parameters.Add("@Country", SqlDbType.NVarChar).Value = country;
        //            command.Parameters.Add("@City", SqlDbType.NVarChar).Value = city;
        //            command.Parameters.Add("@Salestype", SqlDbType.NVarChar).Value = saletype;
        //            command.Parameters.Add("@Contact", SqlDbType.NVarChar).Value = contact;
        //            command.Parameters.Add("@Address", SqlDbType.NVarChar).Value = add;
        //            command.Parameters.Add("@Tel", SqlDbType.NVarChar).Value = tel;
        //            command.Parameters.Add("@Fax", SqlDbType.NVarChar).Value = "Nodate";
        //            command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
        //            command.ExecuteNonQuery();
        //            connection.Close();
        //            Response.Write($"<script>alert('已新增資料');;location.href='Back_DealersCountry.aspx';</script>");
        //        }

        //        //Response.Redirect("Dealers_Manger.aspx");
        //    }
        //    else if (city == "" || saletype == "" || contact == "" || add == "" || tel == "" || email == "")
        //    {
        //        Label1.Visible = true;
        //        Label1.Text = "請勿空白";
        //    }
        //}

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //取得點擊這列的id
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            SqlCommand command = new SqlCommand($"DELETE FROM dealers WHERE (id = @id)", connect);
            connect.Open();
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();
            connect.Close();
            Response.Write($"<script>alert('已刪除國家');;location.href='Back_DealersCountry.aspx';</script>");
            //string url = Request.Url.ToString();
            //Response.Redirect(url);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Country.Text.ToString() == "")
            {
                Label1.Visible = true;
                Label1.Text = "請記得填寫國家";
            }
            else
            {
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"INSERT INTO dealers_country(Country) VALUES (@Country)";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                //command.Parameters.Add("@Country", SqlDbType.NVarChar).Value = country;
                command.Parameters.Add("@Country", SqlDbType.NVarChar).Value = Country.Text.ToString().Trim();
                command.ExecuteNonQuery();
                connection.Close();
                Response.Write($"<script>alert('已增加國家');;location.href='Back_DealersCountry.aspx';</script>");
                //Response.Redirect("Dealers_Manger.aspx");
            }
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //取得點擊這列的id
            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            SqlCommand command = new SqlCommand($"DELETE FROM dealers_country WHERE (id = @id)", connect);
            connect.Open();
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();
            connect.Close();
            Response.Write($"<script>alert('已刪除國家');;location.href='Back_DealersCountry.aspx';</script>");
            //string url = Request.Url.ToString();
            //Response.Redirect(url);

        }

        //protected void Sumbit_Click(object sender, EventArgs e)
        //{
        //    string UserID = "1";
        //    string saveDir = @"\UploadTest\";
        //    //取得目錄完整位置
        //    string appPath = Request.PhysicalApplicationPath;
        //    string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);

        //    if (FileUpload1.HasFiles)
        //    {

        //        //SubmitFile(UserID, FileUpload1.PostedFiles);
        //        Label1.Text = "成功上傳";


        //    }
        //    else
        //    {
        //        Label1.Text = "上傳失敗";
        //    }
        //    SqlConnection connection = new SqlConnection(SqlName);

        //    connection.Open();
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
        //    //Image1.ImageUrl = imageName;
        //    FileUpload1.SaveAs(filePathName);
        //    string sql = @"INSERT INTO dealers_pic(userid,FileName,FilePath) Values(@ID,@FileName,@FilePath)";
        //    SqlCommand command = new SqlCommand(sql, connection);
        //    command.Parameters.Clear();//清空參數
        //    command.Parameters.Add("@ID", SqlDbType.Int).Value = UserID;
        //    command.Parameters.AddWithValue("@FileName", FileUpload1.FileName);
        //    command.Parameters.AddWithValue("@FilePath", filePathName);
        //    command.ExecuteNonQuery();

        //    connection.Close();
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_DealersAdd.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                GridView2.Visible = true;
            }
            else
            {
                GridView2.Visible = false;
            }   
        }
    }
}