using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_DIMENSIONS : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
            userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
            string creater = Myperson.Account.ToString();

            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "INSERT INTO Yachts_DIMENSIONS (yachtid, main, Creater ) Values (@yachtid, @main, @Creater)";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.Add("@yachtid", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue;
            command.Parameters.Add("@main", SqlDbType.NVarChar).Value = HttpUtility.HtmlEncode(TextBox1.Text.Trim());
            command.Parameters.AddWithValue("@Creater",creater);


            command.ExecuteNonQuery();

            connection.Close();
            //string url = Request.Url.ToString();
            //Response.Write($"<script>alert('新增成功');;location.href='{url}';</script>");
            Response.Write($"<script>alert('新增成功');;location.href='Back_YachtsUpload02.aspx';</script>");
        }
    }
}