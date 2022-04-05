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
    public partial class Back_SearchNews : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Search_Click(object sender, EventArgs e)
        {
            string begintime = TextBox1.Text.ToString();
            string finishtime = TextBox2.Text.ToString();

            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT* FROM NewsTest01 WHERE initdate >= DATEADD(day, DATEDIFF(day, '', '{begintime}'), '')AND initdate<DATEADD(day, DATEDIFF(day, '', '{finishtime}') +1, '') ";
            //string sql = $"SELECT* FROM NewsTest01 WHERE initdate >= @DATEADD AND initdate<@DATEADDA";
            //string sql = $"SELECT* FROM NewsTest01 WHERE initdate >= DATEADD(day, DATEDIFF(day, '', '@begintime'), '')AND initdate<DATEADD(day, DATEDIFF(day, '', '@finishtime') +1, '') ";
            SqlCommand command = new SqlCommand(sql, connection);
           
            //command.Parameters.Add("@begintime",SqlDbType.DateTime).Value = TextBox1.Text;
            //command.Parameters.Add("@finishtime", SqlDbType.DateTime).Value = TextBox2.Text;
            //command.Parameters.AddWithValue("@Search", Search);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            string count = table.Rows.Count.ToString();
            if (table.Rows.Count > 0)
            {
                Lab_Search.Text = $"總共有{count}筆資料";
                Lab_Search.Visible = true;
                GridView1.Visible = true;
            }
            else
            {
                Lab_Search.Text = "沒有符合的新聞";
                Lab_Search.Visible = true;
            }
        }
    }
}