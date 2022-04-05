using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_Yachtsdetail01 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                showmain();
                showtable();
                showlayout();
                showdimensions();
            }
        }

        private void showlayout()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  YACHTS_Layout WHERE (yachtid = @yachtid)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@yachtid", id);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView2.DataSource = table;
            GridView2.DataBind();
        }

        private void showmain()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  YACHTS WHERE (id = @id)";
            connection.Open();
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder main_str = new StringBuilder();
            while (dataReader.Read())
            {
                main_str.Append(HttpUtility.HtmlDecode(dataReader["main"].ToString()));
            }
            connection.Close();
            Label1.Text = main_str.ToString();
        }

        private void showtable()
        {
            //string id = Request.QueryString["ID"];
            //SqlConnection connection = new SqlConnection(SqlName);
            //string sql = $"SELECT *FROM  YACHTS_dim WHERE (yachtid = @yachtid)";
            //SqlCommand command = new SqlCommand(sql, connection);
            //command.Parameters.AddWithValue("@yachtid", id);
            //SqlDataAdapter adapter = new SqlDataAdapter(command);
            //DataTable table = new DataTable();
            //adapter.Fill(table);
            //GridView1.DataSource = table;
            //GridView1.DataBind();
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  YACHTS_dim WHERE (yachtid = @yachtid)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@yachtid", id);
        
        }

        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;

        //    showtable();
        //}

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    showtable();
        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    string id = Request.QueryString["ID"].ToString();


        //    //連接 Sql連線 
        //    SqlConnection sqlconnect = new SqlConnection(SqlName);
        //    //2.SQL語法                                                     參數化
        //    string sql = $"UPDATE  YACHTS_dim SET Hulllength=@Hulllength, LWL=@LWL, BMAX=@BMAX, Standarddraft=@Standarddraft, Ballast=@Ballast, Displacement=@Displacement, Sailarea=@Sailarea, Cutter=@Cutter  WHERE (yachtid = @yachtid)";

        //    //3.創建Command物件
        //    SqlCommand command = new SqlCommand(sql, sqlconnect);
        //    //4.打開資料庫
        //    sqlconnect.Open();
        //    //加入資料進資料庫
        //    command.Parameters.AddWithValue("@yachtid", id);
        //    command.Parameters.Add("@Hulllength", SqlDbType.NVarChar).Value = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text.ToString();
        //    command.Parameters.Add("@LWL", SqlDbType.NVarChar).Value = ((TextBox)(GridView1.Rows[e.RowIndex]).Cells[2].Controls[0]).Text.ToString();
        //    command.Parameters.Add("@BMAX", SqlDbType.NVarChar).Value = ((TextBox)(GridView1.Rows[e.RowIndex]).Cells[3].Controls[0]).Text.ToString();
        //    command.Parameters.Add("@Standarddraft", SqlDbType.NVarChar).Value = ((TextBox)(GridView1.Rows[e.RowIndex]).Cells[4].Controls[0]).Text.ToString();
        //    command.Parameters.Add("@Ballast", SqlDbType.NVarChar).Value = ((TextBox)(GridView1.Rows[e.RowIndex]).Cells[5].Controls[0]).Text.ToString();
        //    command.Parameters.Add("@Displacement", SqlDbType.NVarChar).Value = ((TextBox)(GridView1.Rows[e.RowIndex]).Cells[6].Controls[0]).Text.ToString();
        //    command.Parameters.Add("@Sailarea", SqlDbType.NVarChar).Value = ((TextBox)(GridView1.Rows[e.RowIndex]).Cells[7].Controls[0]).Text.ToString();
        //    command.Parameters.Add("@Cutter", SqlDbType.NVarChar).Value = ((TextBox)(GridView1.Rows[e.RowIndex]).Cells[8].Controls[0]).Text.ToString();

        //    //5.記得加
        //    command.ExecuteNonQuery();
        //    //6.關閉資料庫
        //    sqlconnect.Close();

        //    GridView1.EditIndex = -1;
        //    showtable();
        //}

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Layout WHERE (id = @id)",connect);
            connect.Open();
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            //Response.Redirect($"Back_Yachtsdetail02.aspx?ID={id}");
            Response.Redirect($"Back_Yachtsdetail03.aspx?ID={id}");
        }

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

        //    //連接 Sql連線 
        //    SqlConnection connect = new SqlConnection(SqlName);

        //    //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
        //    SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_dim WHERE (id = @id)");
        //    connect.Open();
        //    command.Parameters.AddWithValue("@id", id);
        //    command.ExecuteNonQuery();
        //    connect.Close();
        //    string url = Request.Url.ToString();
        //    Response.Redirect(url);
        //}

        protected void But_Edit_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Text_Main.Visible = true;
            But_Save.Visible = true;
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  YACHTS WHERE (id = @id)";
            connection.Open();
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder main_str = new StringBuilder();
            while (dataReader.Read())
            {
                main_str.Append(HttpUtility.HtmlDecode(dataReader["main"].ToString()));
            }
            connection.Close();
            Text_Main.Text = main_str.ToString();
        }

        protected void But_Save_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"UPDATE YACHTS SET main = @main WHERE ( id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@main", HttpUtility.HtmlEncode(Text_Main.Text.Trim()));
            command.ExecuteNonQuery();
            connection.Close();
            string url = Request.Url.ToString();
            Label1.Visible = true;
            Text_Main.Visible = false;
            Response.Write($"<script>alert('已經修改');;location.href='{url}';</script>");
        }

        protected void But_Cancel_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Text_Main.Visible = false;
            But_Save.Visible = false;
            showdimensions();
        }

        private void showdimensions()
        {
            string id = Request.QueryString["id"].ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM Yachts_DIMENSIONS WHERE (yachtid = @yachtid) ";
            SqlCommand command = new SqlCommand(sql, connection);

            StringBuilder News_str = new StringBuilder();
            connection.Open();
            command.Parameters.AddWithValue("@yachtid", id);
            SqlDataReader dataReader = command.ExecuteReader();
            dataReader.Read();

            News_str.Append(HttpUtility.HtmlDecode(dataReader["main"].ToString()));
            connection.Close();
            Lab_table.Text = News_str.ToString();
            TextBox2.Text = News_str.ToString();
        }

        protected void Btn_Table_Click(object sender, EventArgs e)
        {
            Lab_table.Visible = false;
            TextBox2.Visible = true;
            Btn_TableSum.Visible = true;
            showdimensions();
        }

        protected void Btn_TableCancel_Click(object sender, EventArgs e)
        {
            Lab_table.Visible = true;
            TextBox2.Visible = false;
            Btn_TableSum.Visible = false;
            showdimensions();
        }

        protected void Btn_TableSum_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"UPDATE Yachts_DIMENSIONS SET main = @main WHERE ( yachtid = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@main", HttpUtility.HtmlEncode(TextBox2.Text.Trim()));
            command.ExecuteNonQuery();
            connection.Close();
            string url = Request.Url.ToString();

            Response.Write($"<script>alert('已經修改');;location.href='{url}';</script>");
        }
    }
}