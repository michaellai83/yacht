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
    public partial class Back_NewsShow : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showNews();
            }
        }

        private void showNews()
        {
            
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT * FROM NewsTest01 ";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            showNews();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showNews();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string istop = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text.ToString();


            //連接 Sql連線 
            SqlConnection sqlconnect = new SqlConnection(SqlName);
            //2.SQL語法                                                     參數化
            string sql = $"UPDATE  NewsTest01 SET [isTop] = @isTop  WHERE (id = @id)";

            //3.創建Command物件
            SqlCommand command = new SqlCommand(sql, sqlconnect);
            //4.打開資料庫
            sqlconnect.Open();
            command.Parameters.AddWithValue("@id", id);
            //加入資料進資料庫
            command.Parameters.AddWithValue("@isTop",istop);


            //5.記得加
            command.ExecuteNonQuery();
            //6.關閉資料庫
            sqlconnect.Close();

            GridView1.EditIndex = -1;
            showNews();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_SearchNews.aspx");
        }
    }
}