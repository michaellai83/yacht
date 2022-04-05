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
    public partial class Yachts_detail03 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showHull();
                showDeck();
                showEng();
                showsteering();
                showspars();
                showsail();
                showinterior();
                showelectrical();
                showpuubing();
            }
        }

        private void showpuubing()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM YACHTS_Plumbing WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView9.DataSource = table;
            GridView9.DataBind();
        }

        private void showelectrical()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM YACHTS_Electrical WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView8.DataSource = table;
            GridView8.DataBind();
        }

        private void showinterior()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM YACHTS_Interior WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView7.DataSource = table;
            GridView7.DataBind();
        }

        private void showsail()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM YACHTS_Sails WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView6.DataSource = table;
            GridView6.DataBind();
        }

        private void showspars()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM YACHTS_Spars WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView5.DataSource = table;
            GridView5.DataBind();
        }

        private void showsteering()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM YACHTS_Steering WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView4.DataSource = table;
            GridView4.DataBind();
        }

        private void showEng()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM YACHTS_Engine WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView3.DataSource = table;
            GridView3.DataBind();
        }

        private void showDeck()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  YACHTS_Deck WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView2.DataSource = table;
            GridView2.DataBind();
        }

        private void showHull()
        {
            string id = Request.QueryString["ID"];
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  YACHTS_Hull WHERE (yachtid = {id})";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Yachts_detail01.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Hull WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Deck WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView3.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Engine WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView4.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Steering WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView5.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Spars WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView6.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Sails WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView7_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView7.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Interior WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView8_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView8.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Electrical WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }

        protected void GridView9_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView9.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Plumbing WHERE (id = {id})", connect);
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }
    }
}