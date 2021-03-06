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
    public partial class Back_index : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showyachts();
            }
        }
        private void showyachts()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  YACHTS ";
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            //連接 Sql連線 
            SqlConnection connect = new SqlConnection(SqlName);

            //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
            SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_Steering WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Spars WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Sails WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Plumbing WHERE (yachtid = @yachtid);DELETE FROM YACHTS_picbox WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Pic WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Layout WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Interior WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Hull WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Engine WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Electrical WHERE (yachtid = @yachtid);DELETE FROM YACHTS_dim WHERE (yachtid = @yachtid);DELETE FROM YACHTS_Deck WHERE (yachtid = @yachtid);DELETE FROM YACHTS WHERE (id = @id)", connect);
            connect.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@yachtid", id);
            command.ExecuteNonQuery();
            connect.Close();
            string url = Request.Url.ToString();
            Response.Redirect(url);
        }
    }
}