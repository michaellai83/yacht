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
    public partial class Back_Search : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showSearch();
            }
        }

        private void showSearch()
        {
            string Search = Request.QueryString["Search"].ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT * FROM Yacht.dbo.NewsTest01 where CHARINDEX('{Search}',title) > 0 ";
            SqlCommand command = new SqlCommand(sql, connection);
            //command.Parameters.AddWithValue("@Search", Search);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            if(table.Rows.Count > 0)
            {
                Lab_Search.Text = $"您搜尋 [{Search}] 的結果如下";
                Lab_Search.Visible = true;
            }
            else
            {
                Lab_Search.Text = "沒有符合的新聞";
                Lab_Search.Visible = true;
            }
        }
    }
}