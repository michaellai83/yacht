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
    public partial class Yachtstype_Manger03 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Hull (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox1.Text.Trim();
            

            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Deck (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox2.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Engine (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox3.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Steering (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox4.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Spars (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox5.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Sails (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox6.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Interior (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox7.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Electrical (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox8.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO YACHTS_Plumbing (yachtid, main ) Values (@yachtid, @main)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = TextBox9.Text.Trim();


            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Yachtstype_Manger01.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Yachtstype_Manger03.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Yachtstype_Manger04.aspx");
        }
    }
}