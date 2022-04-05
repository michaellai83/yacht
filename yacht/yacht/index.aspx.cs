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
    public partial class index : System.Web.UI.Page
    {
        string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            showtoppic();
            showtop1();
        }

        

        private void showtoppic()
        {
            SqlConnection connection = new SqlConnection(SqlName);
            string sql = $"SELECT  YACHTS.name, YACHTS.main, YACHTS_Pic.FileName, YACHTS_Pic.FilePath, YACHTS_Pic.[isTop] FROM  YACHTS INNER JOIN YACHTS_Pic ON YACHTS.id = YACHTS_Pic.yachtid ORDER BY YACHTS_Pic.[isTop]DESC, YACHTS.initdate DESC ";//找到最新的船
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            StringBuilder Pic_str = new StringBuilder();
            while (dataReader.Read())
            {
                if (dataReader["isTop"].ToString() == "True")
                {
                    string name = dataReader["name"].ToString();
                    name = name.Substring(6, 3);

                    string pic = dataReader["FileName"].ToString();
                    Pic_str.Append($@"<li class='info'><a href='' target='_blank'><img src='UploadTest/{pic}' width='980px' heigh='450px'  /></a><div class='wordtitle'>TAYANA <span>{name}</span><br /><p>SPECIFICATION SHEET</p></div><div class='new' ><img src='images/new01.png' alt='new' /></div><input type='hidden'' value='0' /></li>");

                }
                else
                {
                    string name = dataReader["name"].ToString();
                    name = name.Substring(6, 3);

                    string pic = dataReader["FileName"].ToString();
                    Pic_str.Append($@"<li class='info'><a href='' target='_blank'><img src='UploadTest/{pic}' width='980px' heigh='450px' /></a><div class='wordtitle'>TAYANA <span>{name}</span><br /><p>SPECIFICATION SHEET</p></div><div class='new' style='display: none'><img src='images/new01.png' alt='new' /></div><input type='hidden'' value='0' /></li>");


                }



            }
            
           
            //int i = 0;
            //while (dataReader.Read())
            //{

            //    string name = dataReader["name"].ToString();
            //    name = name.Substring(6,3);
                
            //    string pic = dataReader["FileName"].ToString();
            //    if (i == 0)
            //    {
            //        Pic_str.Append($@"<li class='info'><a href='' target='_blank'><img src='UploadTest/{pic}' width='980px' heigh='450px'  /></a><div class='wordtitle'>TAYANA <span>{name}</span><br /><p>SPECIFICATION SHEET</p></div><div class='new' ><img src='images/new01.png' alt='new' /></div><input type='hidden'' value='0' /></li>");
            //    }
            //    else
            //    {
            //        Pic_str.Append($@"<li class='info'><a href='' target='_blank'><img src='UploadTest/{pic}' width='980px' heigh='450px' /></a><div class='wordtitle'>TAYANA <span>{name}</span><br /><p>SPECIFICATION SHEET</p></div><div class='new' style='display: none'><img src='images/new01.png' alt='new' /></div><input type='hidden'' value='0' /></li>");
            //    }
            //    //i++;
                
                
            //}

            connection.Close();
            Lit_TopPic.Text = Pic_str.ToString();
        }

        private void showtop1()
        {
            SqlConnection connectionTop = new SqlConnection(SqlName);
            string sqlTop = $"SELECT* FROM NewsTest01 WHERE [isTop]=@isTop";//找到最新的一筆資料
            SqlCommand commandTop = new SqlCommand(sqlTop, connectionTop);
            //connectionTop.Open();
            commandTop.Parameters.AddWithValue("@isTop", "True");
            SqlDataAdapter dataAdapterTop = new SqlDataAdapter(commandTop);
            DataTable table = new DataTable();
            dataAdapterTop.Fill(table);
            StringBuilder News_strTop = new StringBuilder();
            if (table.Rows.Count > 0)
            {
                string filename = table.Rows[0]["titleFileName"].ToString();
                string time = table.Rows[0]["initdate"].ToString();
                string id = table.Rows[0]["id"].ToString();
                string title = table.Rows[0]["title"].ToString();
                News_strTop.Append($"<li><div class='news01'><div class='newstop' ><img src='images/new_top01.png' alt=' & quot; &quot; ' /></div><div class='news02p1'><p class='news02p1img'><img id='Repeater3_ctl01_Image1' src='UploadTest\\{filename}' style='border - width:0px; ' /></p></div><p class='news02p2'><span><font color='#02a5b8'>{time}</font></span><span><a href='new_view.aspx?id={id}'>{title}</a></span></p><input type='hidden' value='0' /></div></li>");

                

                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT TOP 2 * FROM[NewsTest01] ORDER BY initdate DESC ";//找到最新的一筆資料
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                
       
                while (dataReader.Read())
                {

                    string filenameT = dataReader["titleFileName"].ToString();
                    string timeT = dataReader["initdate"].ToString();
                    string idT = dataReader["id"].ToString();
                    string titleT = dataReader["title"].ToString();
                    News_strTop.Append($"<li><div class='news01'><div class='newstop' style='display: none'><img src='images/new_top01.png' alt=' & quot; &quot; ' /></div><div class='news02p1'><p class='news02p1img'><img id='Repeater3_ctl01_Image1' src='UploadTest\\{filenameT}' style='border - width:0px; ' /></p></div><p class='news02p2'><span><font color='#02a5b8'>{timeT}</font></span><span><a href='new_view.aspx?id={idT}'>{titleT}</a></span></p><input type='hidden' value='0' /></div></li>");
                }
                connection.Close();
                Lit_Top1.Text = News_strTop.ToString();
            }
            else
            {
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT TOP 3 * FROM[NewsTest01] ORDER BY initdate DESC ";//找到最新的一筆資料
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                StringBuilder News_str = new StringBuilder();
                //int i = 0;
                while (dataReader.Read())
                {

                    string filename = dataReader["titleFileName"].ToString();
                    string time = dataReader["initdate"].ToString();
                    string id = dataReader["id"].ToString();
                    string title = dataReader["title"].ToString();
                    //string top = dataReader["isTop"].ToString();
                    News_str.Append($"<li><div class='news01'><div class='newstop' style='display: none'><img src='images/new_top01.png' alt=' & quot; &quot; ' /></div><div class='news02p1'><p class='news02p1img'><img id='Repeater3_ctl01_Image1' src='UploadTest\\{filename}' style='border - width:0px; ' /></p></div><p class='news02p2'><span><font color='#02a5b8'>{time}</font></span><span><a href='new_view.aspx?id={id}'>{title}</a></span></p><input type='hidden' value='0' /></div></li>");

                    //if (top == "True")
                    ////if (i == 0)
                    //{
                    //    News_str.Append($"<li><div class='news01'><div class='newstop' ><img src='images/new_top01.png' alt=' & quot; &quot; ' /></div><div class='news02p1'><p class='news02p1img'><img id='Repeater3_ctl01_Image1' src='UploadTest\\{filename}' style='border - width:0px; ' /></p></div><p class='news02p2'><span><font color='#02a5b8'>{time}</font></span><span><a href='new_view.aspx?id={id}'>{title}</a></span></p><input type='hidden' value='0' /></div></li>");
                    //}
                    //else
                    //{
                    //    News_str.Append($"<li><div class='news01'><div class='newstop' style='display: none'><img src='images/new_top01.png' alt=' & quot; &quot; ' /></div><div class='news02p1'><p class='news02p1img'><img id='Repeater3_ctl01_Image1' src='UploadTest\\{filename}' style='border - width:0px; ' /></p></div><p class='news02p2'><span><font color='#02a5b8'>{time}</font></span><span><a href='new_view.aspx?id={id}'>{title}</a></span></p><input type='hidden' value='0' /></div></li>");

                    //}
                    //News_str.Append($"<li><div class='news01'><div class='newstop' ><img src='images/new_top01.png' alt=' & quot; &quot; ' /></div><div class='news02p1'><p class='news02p1img'><img id='Repeater3_ctl01_Image1' src='UploadTest\\{filename}' style='border - width:0px; ' /></p></div><p class='news02p2'><span><font color='#02a5b8'>{time}</font></span><span><a href='new_view.aspx?id={id}'>{title}</a></span></p><input type='hidden' value='0' /></div></li>");
                    //沒有TOP圖案
                    //News_str.Append($"<li><div class='news01'><div class='newstop' style='display: none'><img src='images/new_top01.png' alt=' & quot; &quot; ' /></div><div class='news02p1'><p class='news02p1img'><img id='Repeater3_ctl01_Image1' src='UploadTest\\{filename}' style='border - width:0px; ' /></p></div><p class='news02p2'><span><font color='#02a5b8'>{time}</font></span><span><a href='new_view.aspx?id={id}'>{title}</a></span></p><input type='hidden' value='0' /></div></li>");
                    //i++;
                }

                connection.Close();
                Lit_Top1.Text = News_str.ToString();
            }

          
        }
    }
}