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
    public partial class Back_YachtsSpecification : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox_Class_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox_Class.Checked)
            {
                Lab_Class.Visible = true;
                TB_Class.Visible = true;
                But_Class.Visible = true;
                GridView1.Visible = true;
                showClassTable();
            }
            else
            {
                Lab_Class.Visible = false;
                TB_Class.Visible = false;
                But_Class.Visible = false;
                GridView1.Visible = false;
            }
        }

        private void showClassTable()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  Yachts_Specification ";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void But_Class_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"INSERT INTO Yachts_Specification (SpecificationName) VALUES (@SpecificationName) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@SpecificationName", HttpUtility.HtmlEncode(TB_Class.Text.Trim()));
            command.ExecuteNonQuery();
            connection.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            showClassTable();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showClassTable();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string SpecificationName = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString();


            //連接 Sql連線 
            SqlConnection sqlconnect = new SqlConnection(SqlName);
            //2.SQL語法                                                     參數化
            string sql = $"UPDATE  Yachts_Specification SET SpecificationName = @SpecificationName  WHERE (id = @id)";

            //3.創建Command物件
            SqlCommand command = new SqlCommand(sql, sqlconnect);
            //4.打開資料庫
            sqlconnect.Open();
            command.Parameters.AddWithValue("@id", id);
            //加入資料進資料庫
            command.Parameters.AddWithValue("@SpecificationName", SpecificationName);


            //5.記得加
            command.ExecuteNonQuery();
            //6.關閉資料庫
            sqlconnect.Close();

            GridView1.EditIndex = -1;
            showClassTable();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();


            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM Yachts_Specification WHERE (id = @id)", connect);
            connect.Open();
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void CheckBox_Detail_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox_Detail.Checked)
            {
                DropDownList1.Visible = true;
                TextBox1.Visible = true;
                Lab_title.Visible = true;
                DropDownList2.Visible = true;
                Lab_Yacht.Visible = true;
                But_Detail.Visible = true;
            }
            else
            {
                DropDownList1.Visible = false;
                TextBox1.Visible = false;
                Lab_title.Visible = false;
                DropDownList2.Visible = false;
                Lab_Yacht.Visible = false;
                But_Detail.Visible = false;
            }
        }

        protected void But_Detail_Click(object sender, EventArgs e)
        {
            string yachtid = DropDownList2.SelectedValue.ToString();
            string spid = DropDownList1.SelectedValue.ToString();
            string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
            userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
            string creater = Myperson.Account.ToString();

            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"INSERT INTO Yachts_SpecificationDetail (yachtid, SpecificationID, detail, Creater) VALUES (@yachtid, @SpecificationID, @detail, @Creater) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@yachtid", yachtid);
            command.Parameters.AddWithValue("@SpecificationID", spid);
            command.Parameters.AddWithValue("@detail", HttpUtility.HtmlEncode(TextBox1.Text.Trim()));
            command.Parameters.AddWithValue("@Creater",creater);
            command.ExecuteNonQuery();
            connection.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_YachtsUpload01.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Back_YachtsUpload02.aspx");
            Response.Redirect("Back_DIMENSIONS.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_YachtsUpload04.aspx");
        }
    }
}