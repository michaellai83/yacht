using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class compan1 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            showmain();
        }

        private void showmain()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM testaboutCer ORDER BY initdate DESC ";//讀取最新的一筆資料
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder News_str = new StringBuilder();
            dataReader.Read();

            News_str.Append(HttpUtility.HtmlDecode(dataReader["main"].ToString()));

            connection.Close();

            Literal1.Text = News_str.ToString();
        }
    }
}