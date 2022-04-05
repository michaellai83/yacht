using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace yacht
{
    /// <summary>
    /// Back_DealersPic 的摘要描述
    /// </summary>
    public class Back_DealersPic : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            string id = context.Request.QueryString["ID"].ToString();
            string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT * FROM dealers WHERE(id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@id", id);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            if (table.Rows.Count > 0)
            {
                string PicName = table.Rows[0]["FileName"].ToString();
                string path = @"\UploadTest\";
                context.Response.Redirect(path + PicName);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}