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
    public partial class Back_DealersEdit : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void But_Upload_Click(object sender, EventArgs e)
        {
            string saveDir = @"\UploadTest\";
            //取得目錄完整位置
            string appPath = Request.PhysicalApplicationPath;
            string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload1.FileName);
            
            if (FileUpload1.HasFiles)
            {

                Lab_upload.Visible = true;
                Lab_upload.Text = "成功上傳";


            }
            else
            {
                Lab_upload.Visible = true;
                Lab_upload.Text = "上傳失敗";
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
            
            string id = Request.QueryString["ID"].ToString();
            SqlConnection connectionHaveReapeat = new SqlConnection(SqlName);
            string sqlHaveReapeat = $"SELECT *FROM  dealers WHERE( id=@id) ";
            SqlCommand commandHaveReapeat = new SqlCommand(sqlHaveReapeat, connectionHaveReapeat);
            connectionHaveReapeat.Open();
            commandHaveReapeat.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = commandHaveReapeat.ExecuteReader();
            if (dataReader.HasRows)
            {
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"UPDATE  dealers SET  FileName =@FileName WHERE( id={id}) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                
                command.Parameters.Add("@FileName", SqlDbType.NVarChar).Value = fileName;
                command.ExecuteNonQuery();

                connection.Close();
            }
            else
            {

                SqlConnection connection = new SqlConnection(SqlName);
                //string sql = "INSERT INTO dealers (Adminid, FileName) Values (@Adminid, @FileName)";
                string sql = "INSERT INTO dealers (FilePath, FileName) Values (@FilePath, @FileName)";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                //command.Parameters.Add("@Adminid", SqlDbType.NVarChar).Value = id;
                command.Parameters.Add("@FileName", SqlDbType.NVarChar).Value = fileName;
                command.Parameters.Add("@FilePath", SqlDbType.NVarChar).Value = filePathName;
                command.ExecuteNonQuery();

                connection.Close();
            }
            connectionHaveReapeat.Close();
        }

        protected void CheckBox_Pic_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox_Pic.Checked)
            {
                FileUpload1.Visible = true;
                But_Upload.Visible = true;
                Label_Uptitle.Visible = true;
            }
            else
            {
                FileUpload1.Visible = false;
                But_Upload.Visible = false;
                Label_Uptitle.Visible = false;
            }
        }

        protected void CheckBox_info_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox_info.Checked)
            {
                Lab_InfoTitle.Visible = true;
                GridView1.Visible = true;
                showview();
            }
            else
            {
                Lab_InfoTitle.Visible = false;
                GridView1.Visible = false;
                
            }
        }

        private void showview()
        {
            string id = Request.QueryString["ID"].ToString();
            
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT * FROM dealers WHERE(id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@id", id);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showview();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();


            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM dealers WHERE (id = @id)", connect);
            connect.Open();
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
           
            showview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            string city = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text.ToString();
            string Salestype = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString();
            string Contact = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.ToString();
            string Add = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.ToString();
            string Tel = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.ToString();
            string Fax = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.ToString();
            string Email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text.ToString();


            //連接 Sql連線 
            SqlConnection sqlconnect = new SqlConnection(SqlName);
            //2.SQL語法                                                     參數化
            string sql = $"UPDATE  dealers SET City = @City, Salestype = @Salestype, Contact = @Contact, Address = @Address, Tel=@Tel, Fax = @Fax, Email = @Email  WHERE (id = @id)";

            //3.創建Command物件
            SqlCommand command = new SqlCommand(sql, sqlconnect);
            //4.打開資料庫
            sqlconnect.Open();
            //加入資料進資料庫
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@City", city);
            command.Parameters.AddWithValue("@Salestype",Salestype);
            command.Parameters.AddWithValue("@Contact",Contact);
            command.Parameters.AddWithValue("@Address",Add);
            command.Parameters.AddWithValue("@Tel",Tel);
            command.Parameters.AddWithValue("@Fax",Fax);
            command.Parameters.AddWithValue("@Email",Email);


            //5.記得加
            command.ExecuteNonQuery();
            //6.關閉資料庫
            sqlconnect.Close();

            GridView1.EditIndex = -1;
            showview();
        }

        
    }
}