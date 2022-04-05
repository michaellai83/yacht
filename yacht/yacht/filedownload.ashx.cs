using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace yacht
{
    /// <summary>
    /// filedownload 的摘要描述
    /// </summary>
    public class filedownload : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string SqlName = WebConfigurationManager.ConnectionStrings["YachtConnectionString"].ConnectionString;
            string fileName;
            string filePath;
            string id = context.Request.QueryString["id"].ToString();//接傳過來的ID
            SqlConnection nowConnection = new SqlConnection(SqlName);
            nowConnection.Open();
            SqlCommand command = new SqlCommand();
            command.Parameters.Clear();
            command.Parameters.Add("@id", SqlDbType.Int).Value = id;
            command.CommandText = @"Select * From YACHTS_File WHERE (yachtid = @id)";
            command.Connection = nowConnection;
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                if (dr["FileName"] != null || dr["FilePath"] != null)
                {
                    fileName = dr["FileName"].ToString();
                    filePath = dr["FilePath"].ToString();
                    if (!Download(filePath, fileName))
                    {
                        context.Response.Expires = 0;
                        context.Response.Clear();
                        context.Response.ContentType = "text/html";
                        context.Response.Write("無檔案");
                        context.Response.End();
                    }

                }
            }
            context.Response.Expires = 0;
            context.Response.Clear();
            context.Response.ContentType = "text/html";
            context.Response.Write("無檔案");
            context.Response.End();

        }
        public bool Download(string filePath, string fileName)
        {
            if (File.Exists(filePath))//檢查檔案是否存在
            {
                try
                {
                    FileInfo xpath_file = new FileInfo(filePath);

                    //將傳入的黨名以 FileInfo 來進襲解析(只以字串無法做)
                    System.Web.HttpContext.Current.Response.Clear();//清除buffer
                    System.Web.HttpContext.Current.Response.ClearHeaders();//清除buffer表頭
                    System.Web.HttpContext.Current.Response.Buffer = false;
                    System.Web.HttpContext.Current.Response.ContentType = "application/octet-stream";
                    System.Web.HttpContext.Current.Response.ContentType = "image/JPEG";
                    System.Web.HttpContext.Current.Response.ContentType = "image/PNG";
                    System.Web.HttpContext.Current.Response.ContentType = "application/pdf";
                    // 檔案類型還有下列幾種"application/pdf"、"application/vnd.ms-excel"
                    //、"text/xml"、"text/HTML"、"image/JPEG"、"image/GIF"
                    System.Web.HttpContext.Current.Response.AppendHeader("Content-Disposition",
                    "attachment;filename=" + System.Web.HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));
                    // 考慮 utf-8 檔名問題，以 out_file 設定另存的檔名
                    System.Web.HttpContext.Current.Response.AppendHeader("Content-Length", xpath_file.Length.ToString()); //表頭加入檔案大小
                    System.Web.HttpContext.Current.Response.WriteFile(xpath_file.FullName);
                    //將檔案輸出
                    System.Web.HttpContext.Current.Response.Flush();
                    //強制Flush buffer 內容
                    System.Web.HttpContext.Current.Response.End();
                    return true;
                }
                catch (Exception)
                { return false; }
            }
            else
                return false;
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