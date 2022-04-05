using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yacht
{
    public partial class Back : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            //沒有驗證票就跳轉到登入頁面
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Back_Login.aspx");
            }
            else
            {
                string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
                string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
                userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
                string AuAuthority = Myperson.Authority.ToString();
                if (AuAuthority.Equals("High"))
                {
                    showBoss();
                    UseYacht();
                    AddYacht();
                    AddNews();
                    Lit_Company.Text = "<a class='nav-link' href='Back_CompanyAbout.aspx'><i class='fas fa-fw fa-chart-area'></i><span>關於公司</span></a>";
                    Lit_AddDealer.Text = "<a class='nav-link' href='Back_DealersAdd.aspx'><i class='fas fa-fw fa-table'></i><span>增加供應商國家</span></a>";
                }
                else
                {
                    //Lit_Company.Text = "<a class='nav-link' href='#'><i class='fas fa-fw fa-chart-area'></i><span>關於公司</span></a>";
                    //Lit_AddDealer.Text = "<a class='nav-link' href='#'><i class='fas fa-fw fa-table'></i><span>增加供應商國家</span></a>";
                    if (Myperson.Btn_Yacht.Equals("True"))
                    {
                        UseYacht();
                    }

                    if (Myperson.Btn_AddYacht.Equals("True"))
                    {
                        AddYacht();
                    }
                    if (Myperson.Btn_AddNews.Equals("True"))
                    {
                        AddNews();
                    }
                    if (Myperson.Btn_Company.Equals("True"))
                    {
                        Lit_Company.Text = "<a class='nav-link' href='Back_CompanyAbout.aspx'><i class='fas fa-fw fa-chart-area'></i><span>關於公司</span></a>";
                    }
                    else
                    {
                        Lit_Company.Text = "<a class='nav-link' href='#'><i class='fas fa-fw fa-chart-area'></i><span>關於公司</span></a>";
                    }
                    if (Myperson.Btn_Dealers.Equals("True"))
                    {
                        Lit_AddDealer.Text = "<a class='nav-link' href='Back_DealersAdd.aspx'><i class='fas fa-fw fa-table'></i><span>增加供應商國家</span></a>";
                    }
                    else
                    {
                        Lit_AddDealer.Text = "<a class='nav-link' href='#'><i class='fas fa-fw fa-table'></i><span>增加供應商國家</span></a>";
                    }
                }

                string id = Convert.ToString(Myperson.id);
                SqlConnection connection = new SqlConnection(SqlName);
                string sql = $"SELECT *FROM  Admin_Pic WHERE( Adminid={id}) ";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                if (dataReader.Read())
                {
                    string img = dataReader["FileName"].ToString();
                    Image_userpic.ImageUrl = $@"~\UploadTest\{img}";
                }
                else
                {
                    Image_userpic.ImageUrl = @"~\Back\img\undraw_profile.svg";
                }

                connection.Close();
            }

        }



        private void AddNews()
        {
            Lit_News.Text = "<a class='collapse-item' href='Back_NewsShow.aspx'>新聞區</a><a class='collapse-item' href='Back_Newsadd.aspx'>增加新聞</a>";
        }

        private void AddYacht()
        {
            Lit_YachtAdd.Text = "<div id='collapseUtilities' class='collapse' aria-labelledby='headingUtilities'data-parent='#accordionSidebar'><div class='bg-white py-2 collapse-inner rounded'><h6 class='collapse-header'>功能</h6> <a class='collapse-item' href='Back_YachtsUpload01.aspx'>增加船型/介紹</a><a class='collapse-item' href='Back_DIMENSIONS.aspx'>DIMENSIONS</a><a class='collapse-item' href='Back_YachtsUpload02.aspx'>Layout & deck plan</a><a class='collapse-item' href='Back_YachtsSpecification.aspx'>規格填寫</a><a class='collapse-item' href='Back_YachtsUpload04.aspx'>電子相簿照片上傳</a><a class='collapse-item' href='Back_YachtsUpload05.aspx'>規格表上傳</a></div></div>";
        }

        private void UseYacht()
        {
            Lit_Yacht.Text = "<div id='collapseTwo' class='collapse' aria-labelledby='headingTwo' data-parent='#accordionSidebar'><div class='bg-white py-2 collapse-inner rounded'><h6 class='collapse-header'>Custom Components:</h6><a class='collapse-item' href='Back_index.aspx'>船型顯示</a><a class='collapse-item' href='Back_YachtsPic.aspx'>船型圖片</a></div></div>";
            //Lit_Yacht.Text = "<a class='nav-link collapsed' href='#' data-toggle='collapse' data-target='#collapseTwo'aria-expanded='true' aria-controls='collapseTwo'><i class='fas fa-fw fa-cog'></i><span>Yacht</span></a><div id='collapseTwo' class='collapse' aria-labelledby='headingTwo' data-parent='#accordionSidebar'><div class='bg-white py-2 collapse-inner rounded'><h6 class='collapse-header'>Custom Components:</h6><a class='collapse-item' href='Back_index.aspx'>船型顯示</a><a class='collapse-item' href='Back_YachtsPic.aspx'>船型圖片</a></div></div>";
        }

        private void showBoss()
        {
            Lit_Dashoboard.Text = " <a class='nav-link' href='Back_Admin.aspx'><i class='fas fa-fw fa-tachometer-alt'></i><span>帳號管理</span></a>";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Search_Btn_Click(object sender, EventArgs e)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Back_Login.aspx");
            }
            else
            {
                string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
                string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
                userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
                string AuAuthority = Myperson.Authority.ToString();
                if (AuAuthority.Equals("High"))
                {
                    string search = Text_Search.Text.Trim();
                    Response.Redirect($"Back_Search.aspx?Search={search}");
                }
                else
                {

                    string url = Request.Url.ToString();
                    Response.Write($"<script>alert('請確認權限');;location.href='{url}';</script>");
                }
            }


        }
    }
}