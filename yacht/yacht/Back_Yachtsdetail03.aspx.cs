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
    public partial class Back_Yachtsdetail03 : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //showHull();
            }
        }

        private void showHull()
        {
            string id = Request.QueryString["ID"];
            //string id = "1";
            string Spid = DropDownList1.SelectedValue.ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT *FROM  Yachts_SpecificationDetail WHERE (yachtid = @id And SpecificationID = @SpecificationID)";
            connection.Open();
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@SpecificationID", Spid);
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder main_str = new StringBuilder();
            while (dataReader.Read())
            {
                main_str.Append(HttpUtility.HtmlDecode(dataReader["detail"].ToString()));
            }
            connection.Close();
            Lab_Hull.Text = main_str.ToString();
            Text_Hull.Text = main_str.ToString();
        }

        protected void Btn_HullEdit_Click(object sender, EventArgs e)
        {
            Lab_Hull.Visible = false;
            Text_Hull.Visible = true;
            Btn_Update.Visible = true;
            showHull();
            
        }

        protected void Btn_HullCancel_Click(object sender, EventArgs e)
        {
            Lab_Hull.Visible = true;
            Text_Hull.Visible = false;
            Btn_Update.Visible = false;
            showHull();
        }

        protected void Btn_DB_Click(object sender, EventArgs e)
        {
            showHull();
        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            EditMain();
            Btn_Update.Visible = false;
            Lab_Hull.Visible = true;
            Text_Hull.Visible = false; ;
        }

        private void EditMain()
        {
            string id = Request.QueryString["ID"].ToString();
            //string id = "1";
            string Spid = DropDownList1.SelectedValue.ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"UPDATE Yachts_SpecificationDetail SET detail = @detail WHERE ( yachtid = @id AND SpecificationID = @SpecificationID) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@SpecificationID",Spid);
            command.Parameters.AddWithValue("@detail", HttpUtility.HtmlEncode(Text_Hull.Text.Trim()));
            command.ExecuteNonQuery();
            connection.Close();
            string url = Request.Url.ToString();
            
            Response.Write($"<script>alert('已經修改');;location.href='{url}';</script>");
        }
    }
}