using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace yacht
{
    /// <summary>
    /// AuthorityCheck 的摘要描述
    /// </summary>
    public class AuthorityCheck : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
            userinformation Myperson = JsonConvert.DeserializeObject<userinformation>(strUserData);
            //context.Response.Redirect("Back_index.aspx");

            //下面是分流頁面 (但是我在MSpage上面寫了權限差別所以這邊就沒用了)
            if (Myperson.Authority.ToString().Equals("High"))
            {
                context.Response.Redirect("Back_index.aspx");

            }
            else
            {
                context.Response.Redirect("Back_index2.aspx");
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