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
    public partial class Back_YachtsUpload01 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS (name, main) Values (@name, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@name", SqlDbType.NVarChar).Value = T_name.Text.Trim();
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = HttpUtility.HtmlEncode(T_main.Text).ToString();
            command.ExecuteNonQuery();

            connection.Close();

            //Response.Redirect("Back_YachtsUpload02.aspx");
            Response.Redirect("Back_DIMENSIONS.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Back_YachtsUpload04.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Back_YachtsUpload02.aspx");
            Response.Redirect("Back_DIMENSIONS.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Back_YachtsUpload03.aspx");
            Response.Redirect("Back_YachtsSpecification.aspx");
        }
    }
}