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
    public partial class Back_CompanyAbout : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.Text = TextBox1.Text.ToString();

            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO testabout (main) Values (@main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = HttpUtility.HtmlEncode(TextBox1.Text.ToString());
            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Back_CompanyAbout.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO testaboutCer (main) Values (@main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = HttpUtility.HtmlEncode(TextBox1.Text.ToString());
            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Back_CompanyAbout.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_EditAboutCompany.aspx");
        }
    }
}