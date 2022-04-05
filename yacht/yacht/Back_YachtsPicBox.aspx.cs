using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back_YachtsPicBox : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string[] ImageNames = Builditemarr();

                SetImageItems(CheckBoxList1, ImageNames);
                showtitle();
            }
        }

        private void showtitle()
        {
            string id = Request.QueryString["ID"].ToString();
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT * FROM YACHTS WHERE (id = @id) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@id", id);
            SqlDataReader dataReader = command.ExecuteReader();
            if (dataReader.Read())
            {
                Lab_name.Text = dataReader["name"].ToString();
            }
            connection.Close();
        }

        private string[] Builditemarr()
        {
            string id = Request.QueryString["ID"].ToString();
            
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT * FROM YACHTS_picbox WHERE (yachtid = @yachtid) ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.Parameters.AddWithValue("@yachtid", id);
            SqlDataReader dataReader = command.ExecuteReader();
            List<string> filname_list = new List<string>();
            //string file = "";
                
            while (dataReader.Read())
            {
                 //file = file + dataReader["FileName"].ToString() + ",";
                filname_list.Add(dataReader["FileName"].ToString());

            }
            //file = file.TrimEnd(',');
            connection.Close();
            string[] Filename = filname_list.ToArray();
            //string[] Filename = file.Split(',');
            return Filename;
        }

        private void SetImageItems(ListControl lc, string[] ImageNames)
        {
            foreach (string ImageName in ImageNames)
            {
                ListItem li = new ListItem();
                li.Text = $@"<img src='\UploadPicBox\{ImageName}' width='250px' height='200px' />";
                li.Value = ImageName;
                lc.Items.Add(li);
            }
        }

        protected void But_Del_Click(object sender, EventArgs e)
        {
            //string check = CheckBoxList1.SelectedValue.ToString();
            string check = "";
            for(int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    check += CheckBoxList1.Items[i].Value.ToString() + ",";
                }
                
            }
            check.TrimEnd(',');
            string[] checkstrary  = check.Split(',');
            foreach( string checkstr in checkstrary)
            {

                //連接 Sql連線 
                SqlConnection connect = new SqlConnection(SqlName);

                //這邊 刪除 會有 PK 和FK的問題  所以要先刪除 FK 的內容                              再刪除 PK 的內容
                SqlCommand command = new SqlCommand($"DELETE FROM YACHTS_picbox WHERE (FileName = @FileName)", connect);
                connect.Open();
                command.Parameters.AddWithValue("@FileName", checkstr);
                command.ExecuteNonQuery();
                connect.Close();
            }
            string url = Request.Url.ToString();
            Response.Write($"<script>alert('已經刪除');;location.href='{url}';</script>");
            //Response.Write($"<script>alert('已經刪除');;location.href='Back_YachtsPic.aspx';</script>");
        }

        protected void But_order_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            Response.Redirect($"Back_YachtsPicBoxOrder.aspx?ID={id}");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();


            //連接 Sql連線 
            SqlConnection sqlconnect = new SqlConnection(SqlName);
            //2.SQL語法                                                     參數化
            string sql = $"UPDATE  YACHTS_Pic SET [isTop] = @isTop  WHERE (yachtid = @yachtid)";

            //3.創建Command物件
            SqlCommand command = new SqlCommand(sql, sqlconnect);
            //4.打開資料庫
            sqlconnect.Open();
            command.Parameters.AddWithValue("@yachtid", id);
            //加入資料進資料庫
            command.Parameters.AddWithValue("@isTop", "True");


            //5.記得加
            command.ExecuteNonQuery();
            //6.關閉資料庫
            sqlconnect.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();


            //連接 Sql連線 
            SqlConnection sqlconnect = new SqlConnection(SqlName);
            //2.SQL語法                                                     參數化
            string sql = $"UPDATE  YACHTS_Pic SET [isTop] = @isTop  WHERE (yachtid = @yachtid)";

            //3.創建Command物件
            SqlCommand command = new SqlCommand(sql, sqlconnect);
            //4.打開資料庫
            sqlconnect.Open();
            command.Parameters.AddWithValue("@yachtid", id);
            //加入資料進資料庫
            command.Parameters.AddWithValue("@isTop", "False");


            //5.記得加
            command.ExecuteNonQuery();
            //6.關閉資料庫
            sqlconnect.Close();
        }
    }
}