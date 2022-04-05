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
    public partial class new_list : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //showmain();
                showtest();
                
            }
        }

        private void showtest()
        {
            int page = 1;
            //判斷網址後有無參數
            //也可以用String.IsNullorWhiteSpace
            if (!String.IsNullOrEmpty(Request.QueryString["page"]))
            {
                page = Convert.ToInt32(Request.QueryString["page"]);
            }
            //設定控制項參數: 一頁幾筆資料
            Pagination.limit = 2;
            //設定控制項參數: 作用頁面完整網頁名稱
            Pagination.targetPage = "new_list.aspx";
            //建立計算分頁資料顯示邏輯(每一頁是從第幾筆開始到第幾筆結束)
            //計算每個分頁的第幾筆到第幾筆
            var floor = (page - 1) * Pagination.limit + 1; //每頁的第一筆
            var ceiling = page * Pagination.limit; //每頁的最末比筆
                                                   //將取得的資料數設定給參數count


            //連接 Sql連線 
            SqlConnection sqlconnect = new SqlConnection(SqlName);

            string pagecontro = "SELECT count(*) FROM [NewsTest01]";
            SqlCommand concommand = new SqlCommand(pagecontro, sqlconnect);

            //設定控制項參數: 總共幾筆資料
            sqlconnect.Open();
            int count = Convert.ToInt32(concommand.ExecuteScalar());

            sqlconnect.Close();

            Pagination.totalItems = count;
            //渲染分頁控制項
            Pagination.ShowPageControls();
            string sql = $"WITH tempA as (SELECT ROW_NUMBER() OVER(ORDER BY initdate DESC) AS rowindex, *FROM NewsTest01) Select *From tempA  WHERE rowindex >={ floor} AND rowindex <= {ceiling}";
            SqlConnection connection = new SqlConnection(SqlName);
            //string sql = $"SELECT News.*FROM News ORDER BY News.initdate DESC";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder News_str = new StringBuilder();
            while (dataReader.Read())
            {
                string title = dataReader["title"].ToString();
                string id = dataReader["id"].ToString();
                
                string date = dataReader["initdate"].ToString();
                string filename = dataReader["titleFileName"].ToString();


                News_str.Append($" <li><div class='list01'><ul><li><div><p><img id='ctl00_ContentPlaceHolder1_Repeater1_ctl01_Image1' src='UploadTest/{filename}' width='180px' heigh='100px' style='border-width:0px;'/></p></div></li><li><span>{date}</span><br /><a href='new_view.aspx?id={id}'>{title}</a></li><br /><li>{title}</li></ul></div></li> ");

            }

            connection.Close();
            Literal1.Text = News_str.ToString();
        }

        private void showmain()
        {
            int page = 1;
            //判斷網址後有無參數
            //也可以用String.IsNullorWhiteSpace
            if (!String.IsNullOrEmpty(Request.QueryString["page"]))
            {
                page = Convert.ToInt32(Request.QueryString["page"]);
            }
            //設定控制項參數: 一頁幾筆資料
            Pagination.limit = 2;
            //設定控制項參數: 作用頁面完整網頁名稱
            Pagination.targetPage = "new_list.aspx";
            //建立計算分頁資料顯示邏輯(每一頁是從第幾筆開始到第幾筆結束)
            //計算每個分頁的第幾筆到第幾筆
            var floor = (page - 1) * Pagination.limit + 1; //每頁的第一筆
            var ceiling = page * Pagination.limit; //每頁的最末比筆
                                                   //將取得的資料數設定給參數count


            //連接 Sql連線 
            SqlConnection sqlconnect = new SqlConnection(SqlName);

            string pagecontro = "SELECT count(*) FROM [News]";
            SqlCommand concommand = new SqlCommand(pagecontro, sqlconnect);

            //設定控制項參數: 總共幾筆資料
            sqlconnect.Open();
            int count = Convert.ToInt32(concommand.ExecuteScalar());

            sqlconnect.Close();

            Pagination.totalItems = count;
            //渲染分頁控制項
            Pagination.ShowPageControls();
            string sql = $"WITH tempA as (SELECT ROW_NUMBER() OVER(ORDER BY initdate DESC) AS rowindex, *FROM News) Select *From tempA  WHERE rowindex >={ floor} AND rowindex <= {ceiling}";
            SqlConnection connection = new SqlConnection(SqlName);
            //string sql = $"SELECT News.*FROM News ORDER BY News.initdate DESC";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder News_str = new StringBuilder();
            while (dataReader.Read())
            {
                string title = dataReader["title"].ToString();
                string id = dataReader["id"].ToString();
                string date = dataReader["initdate"].ToString().Substring(0,10);
                string filename = dataReader["FileName"].ToString();
                

                News_str.Append($" <li><div class='list01'><ul><li><div><p><img id='ctl00_ContentPlaceHolder1_Repeater1_ctl01_Image1' src='UploadTest/{filename}' style='border-width:0px;'/></p></div></li><li><span>{date}</span><br /><a href='new_view.aspx?id={id}'>{title}</a></li><br /><li>{title}</li></ul></div></li> ");

            }

            connection.Close();
            Literal1.Text = News_str.ToString();
        }
        
    }
}