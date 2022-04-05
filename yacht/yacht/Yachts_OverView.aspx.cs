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
    public partial class Yachts_OverView : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showleft();
                showtopa();
                showtitle();
                showmain();
                showtable();
                showmaintopa();
                showpicbox();
                showdownload();
            }
        }

        private void showpicbox()
        {
            if (Request.QueryString["id"] == null)
            {
                SqlConnection connection_id = new SqlConnection(SqlName);
                string sql_id = "SELECT *FROM YACHTS";
                SqlCommand command_id = new SqlCommand(sql_id, connection_id);
                connection_id.Open();
                SqlDataReader dataReader_id = command_id.ExecuteReader();
                dataReader_id.Read();
                string ID = dataReader_id["id"].ToString();
                connection_id.Close();

                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS_picbox WHERE (yachtid = @yachtid) ORDER BY [order] ";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder str_picbox = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@yachtid", ID);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string pic = dataReader["FileName"].ToString();
                    
                    str_picbox.Append($@"<li><a href='UploadPicBox/{pic}'><img src='UploadPicBox/{pic}' class='image0' width='158px' height='63px' /></a></li>");
                }

                connection.Close();
                
                
                Lite_picbox.Text = str_picbox.ToString();
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS_picbox WHERE (yachtid = {id}) ORDER BY [order]";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder str_picbox = new StringBuilder();
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string pic = dataReader["FileName"].ToString();

                    str_picbox.Append($@"<li><a href='UploadPicBox/{pic}'><img src='UploadPicBox/{pic}' class='image0' width='158px' height='63px' /></a></li>");
                }

                connection.Close();


                Lite_picbox.Text = str_picbox.ToString();
            }
        }

        private void showtitle()
        {
            if (Request.QueryString["id"] == null)
            {
                Lit_title.Text = "<span>Tayana 37</span>";
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS WHERE (id =@id)";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string title = dataReader["name"].ToString();
                    

                    News_str.Append($"<span>{title}</span>");
                }

                connection.Close();
                Lit_title.Text = News_str.ToString();
            }
        }

        private void showmaintopa()
        {
            if (Request.QueryString["id"] == null)
            {
                SqlConnection connection_id = new SqlConnection(SqlName);
                string sql_id = "SELECT *FROM YACHTS";
                SqlCommand command_id = new SqlCommand(sql_id, connection_id);
                connection_id.Open();
                SqlDataReader dataReader_id = command_id.ExecuteReader();
                dataReader_id.Read();
                string ID = dataReader_id["id"].ToString();
                connection_id.Close();
                StringBuilder str_maintopa = new StringBuilder();
                str_maintopa.Append($"<li><a class='menu_yli01' href='Yachts_OverView.aspx?id={ID}'>Interior</a></li><li><a class='menu_yli02' href='Yachts_Layout.aspx?id={ID}'>Layout & deck plan</a></li><li><a class='menu_yli03' href='Yachts_Specification02.aspx?id={ID}'>Specification</a></li>");
                Lit_maintopa.Text = str_maintopa.ToString();
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                StringBuilder str_maintopa = new StringBuilder();
                str_maintopa.Append($"<li><a class='menu_yli01' href='Yachts_OverView.aspx?id={id}'>Interior</a></li><li><a class='menu_yli02' href='Yachts_Layout.aspx?id={id}'>Layout & deck plan</a></li><li><a class='menu_yli03' href='Yachts_Specification02.aspx?id={id}'>Specification</a></li>");
                Lit_maintopa.Text = str_maintopa.ToString();
            }
        }
        private void showtable()
        {
            //if (Request.QueryString["id"] == null || Session["title"] == null)
            //{
            //    SqlConnection connection = new SqlConnection(SqlName);
            //    string sql = $"SELECT *FROM YACHTS_dim ";
            //    SqlCommand command = new SqlCommand(sql, connection);

            //    StringBuilder News_str = new StringBuilder();
            //    connection.Open();
            //    SqlDataReader dataReader = command.ExecuteReader();
            //    dataReader.Read();


            //    News_str.Append($"<h4>37 DIMENSIONS</h4><table class='table02'><tbody><tr><td class='table02td01'><table><tbody><tr><th>Hull length</th><td>{dataReader["Hulllength"]}</td></tr><tr class='tr003'><th>L.W.L.</th><td>{dataReader["LWL"]}</td></tr><tr><th>B. MAX</th><td>{dataReader["BMAX"]}</td></tr><tr class='tr003''><th>Standard draft</th><td>{dataReader["Standarddraft"]}</td></tr><tr><th>Ballast</th><td>{dataReader["Ballast"]}</td></tr><tr class='tr003'><th>Displacement</th><td>{dataReader["Displacement"]}</td></tr><tr><th>Sail area</th><td>{dataReader["Sailarea"]}</td></tr><tr class='tr003'><th>Cutter</th><td>{dataReader["Cutter"]}</td></tr></tbody></table></td><td><img alt='Tayana' src='UploadTest\\{dataReader["FileName"]}' /></td></tr></tbody></table>");
            //    connection.Close();
            //    Lit_table.Text = News_str.ToString();
            //}
            //else
            //{
            //    string title = Session["title"].ToString();
            //    string id = Request.QueryString["id"].ToString();
            //    SqlConnection connection = new SqlConnection(SqlName);
            //    string sql = $"SELECT *FROM YACHTS_dim WHERE (yachtid =@yachtid)";
            //    SqlCommand command = new SqlCommand(sql, connection);

            //    StringBuilder News_str = new StringBuilder();
            //    connection.Open();
            //    command.Parameters.AddWithValue("@yachtid", id);
            //    SqlDataReader dataReader = command.ExecuteReader();
            //    dataReader.Read();


            //    News_str.Append($"<h4>{title} DIMENSIONS</h4><table class='table02'><tbody><tr><td class='table02td01'><table><tbody><tr><th>Hull length</th><td>{dataReader["Hulllength"]}</td></tr><tr class='tr003'><th>L.W.L.</th><td>{dataReader["LWL"]}</td></tr><tr><th>B. MAX</th><td>{dataReader["BMAX"]}</td></tr><tr class='tr003''><th>Standard draft</th><td>{dataReader["Standarddraft"]}</td></tr><tr><th>Ballast</th><td>{dataReader["Ballast"]}</td></tr><tr class='tr003'><th>Displacement</th><td>{dataReader["Displacement"]}</td></tr><tr><th>Sail area</th><td>{dataReader["Sailarea"]}</td></tr><tr class='tr003'><th>Cutter</th><td>{dataReader["Cutter"]}</td></tr></tbody></table></td><td><img width='278px' heigth='345px' alt='Tayana' src='UploadTest\\{dataReader["FileName"]}' /></td></tr></tbody></table>");
            //    connection.Close();
            //    Lit_table.Text = News_str.ToString();
            //}

            if (Request.QueryString["id"] == null || Session["title"] == null)
            {
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM Yachts_DIMENSIONS WHERE (yachtid = @yachtid) ";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@yachtid", "1");
                SqlDataReader dataReader = command.ExecuteReader();
                dataReader.Read();

                News_str.Append(HttpUtility.HtmlDecode(dataReader["main"].ToString()));
                connection.Close();
                Lit_table.Text = News_str.ToString();
            }
            else
            {
                string title = Session["title"].ToString();
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM Yachts_DIMENSIONS WHERE (yachtid = @yachtid) ";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@yachtid", id);
                SqlDataReader dataReader = command.ExecuteReader();
                dataReader.Read();

                News_str.Append(HttpUtility.HtmlDecode(dataReader["main"].ToString()));
                connection.Close();
                Lit_table.Text = News_str.ToString();
            }
        }

        private void showmain()
        {
            if (Request.QueryString["id"] == null)
            {
                
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS ";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                dataReader.Read();

                string main = HttpUtility.HtmlDecode(dataReader["main"].ToString());

                News_str.Append(main);

                connection.Close();
                Lit_main.Text = News_str.ToString();
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS WHERE (id =@id)";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = command.ExecuteReader();
                dataReader.Read();

                string main = HttpUtility.HtmlDecode(dataReader["main"].ToString());

                News_str.Append(main);

                connection.Close();

                Lit_main.Text = News_str.ToString();
            }
        }

        private void showtopa()
        {
            if (Request.QueryString["id"] == null)
            {
                Lit_topa.Text = "<a href='Yachts_OverView.aspx'><span class='on1'>Tayana 37</span></a>";
            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS WHERE (id =@id)";
                SqlCommand command = new SqlCommand(sql, connection);

                StringBuilder News_str = new StringBuilder();
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    string title = dataReader["name"].ToString();
                    Session["title"] = title.Remove(0,6);

                    News_str.Append($"<a href='Yachts_OverView.aspx?id={id}'><span class='on1'>{title}</span></a>");
                }

                connection.Close();
                Lit_topa.Text = News_str.ToString();
            }
        }

        private void showleft()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = "SELECT *FROM YACHTS";
            SqlCommand command = new SqlCommand(sql, connection);
           
            StringBuilder News_str = new StringBuilder();
            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                string lefttitle = dataReader["name"].ToString();
                string id = dataReader["id"].ToString();
                News_str.Append($"<li><a href='Yachts_OverView.aspx?id={id}'>{lefttitle}</a></li>");
            }

            connection.Close();
            Lit_lift.Text = News_str.ToString();
            
            }

        private void showdownload()
        {
            if (Request.QueryString["id"] == null)
            {

                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM YACHTS ";
                SqlCommand command = new SqlCommand(sql, connection);

                
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                dataReader.Read();
                StringBuilder News_str = new StringBuilder();
                string id =dataReader["id"].ToString();
                News_str.Append($"<li><a id='ctl00_ContentPlaceHolder1_RepFile_ctl01_HyperLink1' href='filedownload.ashx?id={id}' target='_blank'>檔案下載</a></li>");
                connection.Close();

                //HyperLink link = (HyperLink)sender; //取得當前觸發這個事件的HyperLink做連繫
                //link.Text = Eval("FileName").ToString();
                //link.NavigateUrl = "filedownload.ashx?id=" + id; //傳遞ID給ashx處理
                Lit_Donwloads.Text = News_str.ToString();

            }
            else
            {
                string id = Request.QueryString["id"].ToString();
                //HyperLink link = (HyperLink)sender; //取得當前觸發這個事件的HyperLink做連繫
                //link.Text = Eval("FileName").ToString();
                //link.NavigateUrl = "filedownload.ashx?id=" + id; //傳遞ID給ashx處理

                Lit_Donwloads.Text = $"<li><a id='ctl00_ContentPlaceHolder1_RepFile_ctl01_HyperLink1' href='filedownload.ashx?id={id}' target='_blank'>檔案下載</a></li>";
            }
            
        }

        
    }
}