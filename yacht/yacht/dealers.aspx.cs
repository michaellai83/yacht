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
    public partial class dealers : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            showleftmeau();
            showcrumb();
            showrightmeau();
        }

        private void showrightmeau()
        {
            string id = Request.QueryString["id"];
            if (Request.QueryString["id"] != null)
            {
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT  dealers_country.Country, dealers.City, dealers.Salestype, dealers.Contact, dealers.Address, dealers.Tel, dealers.Fax, dealers.Email FROM dealers INNER JOIN dealers_country ON dealers.Countryid = dealers_country.id WHERE   (dealers.Countryid = @id)";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = command.ExecuteReader();
                StringBuilder Contry_str = new StringBuilder();
                while (dataReader.Read())
                {
                    string countryname = dataReader["Country"].ToString();

                    Contry_str.Append($"<li><div class='list02'><ul><li class='list02li'><div><p><img id='ctl00_ContentPlaceHolder1_Repeater1_ctl01_Image1'' src='upload / Images / s20200120010428.jpg'' style='border-width:0px  ; '' /></p></ div > ");
                    
                    
                    
                }

                connection.Close();
                string sqlsel = $"SELECT  dealers_country.Country, dealers.City, dealers.Salestype, dealers.Contact, dealers.Address, dealers.Tel, dealers.Fax, dealers.Email, dealers.FileName, dealers.FilePath FROM dealers INNER JOIN dealers_country ON dealers.Countryid = dealers_country.id  WHERE   (dealers.Countryid = @id)";
                SqlCommand commandsel = new SqlCommand(sqlsel, connection);
                connection.Open();
                commandsel.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReadersel = commandsel.ExecuteReader();
                StringBuilder Rightstr = new StringBuilder();
                while (dataReadersel.Read())
                {

                    string imgpath = dataReadersel["FileName"].ToString();
                    string saletype = dataReadersel["Salestype"].ToString();
                    string contact = dataReadersel["Contact"].ToString();
                    string add = dataReadersel["Address"].ToString();
                    string tel = dataReadersel["Tel"].ToString();
                    string email = dataReadersel["Email"].ToString();
                    string fax = dataReadersel["Fax"].ToString();


                    if (fax.Equals("Nodate"))
                    {
                        Rightstr.Append($@"<li><div class='list02'><ul><li class='list02li'><div><p><img id='ctl00_ContentPlaceHolder1_Repeater1_ctl01_Image1''  src='.\UploadTest\{imgpath}'' width='209px' height='150px' style='border-width:0px ; display:block;margin:auto; '' /></p></div></li><li class='list02li02'><span>{saletype}</span><br />{saletype}<br />Contact：{contact}<br />Address：{add}<br />TEL：{tel}<br />E-Mail: {email}<br /><a href='' target='_blank'></a></li></ul></div></li>");

                    }
                    else
                    {
                        Rightstr.Append($@"<li><div class='list02'><ul><li class='list02li'><div><p><img id='ctl00_ContentPlaceHolder1_Repeater1_ctl01_Image1'' src='.\UploadTest\{imgpath}'' width='209px' height='150px' style='border-width:0px; display:block;margin:auto; '' /></p></div></li><li class='list02li02'><span>{saletype}</span><br />{saletype}<br />Contact：{contact}<br />Address：{add}<br />TEL：{tel}<br />FAX：{fax} E-Mail: {email}<br /><a href='' target='_blank'></a></li></ul></div></li>");
                    }

                    Lit_right.Text = Rightstr.ToString();

                }
                connection.Close();

            }
            else
            {
                //取第一筆的id給顯示頁面用
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT TOP 1 * FROM dealers_country";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                string ID = "";
                while (dataReader.Read())
                {
                     ID = dataReader["id"].ToString();
                    string countryname = dataReader["Country"].ToString();
                  
                }

                connection.Close();

                
                string sqlsel = $"SELECT  dealers_country.Country, dealers.City, dealers.Salestype, dealers.Contact, dealers.Address, dealers.Tel, dealers.Fax, dealers.Email, dealers.FileName, dealers.FilePath FROM dealers INNER JOIN dealers_country ON dealers.Countryid = dealers_country.id  WHERE   (dealers.Countryid = @ID)";
                SqlCommand commandsel = new SqlCommand(sqlsel, connection);
                connection.Open();
                commandsel.Parameters.AddWithValue("@ID", ID);
                SqlDataReader dataReadersel = commandsel.ExecuteReader();
                StringBuilder Rightstr = new StringBuilder();
                while (dataReadersel.Read())
                {
                    
                    string imgpath = dataReadersel["FileName"].ToString();
                    string saletype = dataReadersel["Salestype"].ToString();
                    string contact = dataReadersel["Contact"].ToString();
                    string add = dataReadersel["Address"].ToString();
                    string tel = dataReadersel["Tel"].ToString();
                    string email = dataReadersel["Email"].ToString();
                    string fax = dataReadersel["Fax"].ToString();


                    if (fax.Equals("Nodate"))
                    {
                        Rightstr.Append($@"<li><div class='list02'><ul><li class='list02li'><div><p><img id='ctl00_ContentPlaceHolder1_Repeater1_ctl01_Image1'' src='.\UploadTest\{imgpath}'' style='border-width:0px; '' /></p></div></li><li class='list02li02'><span>{saletype}</span><br />{saletype}<br />Contact：{contact}<br />Address：{add}<br />TEL：{tel}<br />E-Mail: {email}<br /><a href='' target='_blank'></a></li></ul></div></li>");

                    }
                    else
                    {
                        Rightstr.Append($@"<li><div class='list02'><ul><li class='list02li'><div><p><img id='ctl00_ContentPlaceHolder1_Repeater1_ctl01_Image1'' src='.\UploadTest\{imgpath}'' style='border-width:0px; '' /></p></div></li><li class='list02li02'><span>{saletype}</span><br />{saletype}<br />Contact：{contact}<br />Address：{add}<br />TEL：{tel}<br />FAX：{fax} E-Mail: {email}<br /><a href='' target='_blank'></a></li></ul></div></li>");
                    }

                    Lit_right.Text = Rightstr.ToString();
                   
                }
                connection.Close();
            }
        }

        private void showcrumb()
        {
            string id = Request.QueryString["id"];
            if(Request.QueryString["id"] != null)
            {

                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM dealers_country  WHERE (id =@id)";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = command.ExecuteReader();
                StringBuilder Contry_str = new StringBuilder();
                while (dataReader.Read())
                {
                    string countryname = dataReader["Country"].ToString();

                    Contry_str.Append($">> <a href=\'dealers.aspx?id={id}\'><spanclass='on1'>{countryname}</span></a>");
                    //Contry_str.Append($"<li><a href='dealers.aspx?id={id}'>{countryname}</a></li>");
                    Lbl_country.Text = countryname;
                }

                connection.Close();
                Lit_crumb.Text = Contry_str.ToString();
            }
            else
            {
                //當剛進入這頁面顯示最上面那筆國家資料
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT TOP 1 * FROM dealers_country";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                StringBuilder Contry_str = new StringBuilder();
                while (dataReader.Read())
                {
                    string ID = dataReader["id"].ToString();
                    string countryname = dataReader["Country"].ToString();

                    Contry_str.Append($">> <a href=\'dealers.aspx?id={ID}\'><spanclass='on1'>{countryname}</span></a>");
                    //Contry_str.Append($"<li><a href='dealers.aspx?id={id}'>{countryname}</a></li>");
                    Lbl_country.Text = countryname;
                }

                connection.Close();
                Lit_crumb.Text = Contry_str.ToString();
                 
                
            }
        }

        private void showleftmeau()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT * FROM dealers_country";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder Contry_str = new StringBuilder();
            while (dataReader.Read())
            {
                string id = dataReader["id"].ToString();
                string countryname = dataReader["Country"].ToString();
                
                Contry_str.Append($"<li><a href='dealers.aspx?id={id}'>{countryname}</a></li>");
                
            }
            
            connection.Close();
            Lite_Dealers.Text = Contry_str.ToString();
        }
    }
}