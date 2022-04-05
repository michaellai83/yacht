using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_EditCertificat : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showabout();
            }
        }

        private void showabout()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM testaboutCer ORDER BY initdate DESC ";
            SqlCommand command = new SqlCommand(sql, connection);


            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            dataReader.Read();
            TextBox1.Text = HttpUtility.HtmlDecode(dataReader["main"].ToString());
            Session["CertificatID"] = dataReader["id"].ToString();


            connection.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Session["CertificatID"].ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"UPDATE testaboutCer SET main = @main WHERE ( id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@main", HttpUtility.HtmlEncode(TextBox1.Text.Trim()));
            command.ExecuteNonQuery();
            connection.Close();
            Label1.Visible = true;
            Label1.Text = "修改完畢";
        }
    }
}