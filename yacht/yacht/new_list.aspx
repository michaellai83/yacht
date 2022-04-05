﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="new_list.aspx.cs" Inherits="yacht.new_list" %>

<%@ Register Src="~/Pagination.ascx" TagPrefix="uc1" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>
    Tayana | Tayana Yachts Official Website
  </title>
  <script type="text/javascript" src="Scripts/jquery.min.js"></script>
  <!--[if lt IE 7]>
  <script type="text/javascript" src="javascript/iepngfix_tilebg.js"></script>
  <![endif]-->
  <link rel="shortcut icon" href="favicon.ico" />
  <link href="css/homestyle.css" rel="stylesheet" type="text/css" />
  <link href="css/reset.css" rel="stylesheet" type="text/css" />
    
  <script type="text/javascript">
    $(function () {
      $('.topbuttom').click(function () {
        $('html, body').scrollTop(0);
      });
    });
  </script>
  <link href="UserControl/pagination.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contain">
            <form name="aspnetForm" method="post" action="new_list.html" id="aspnetForm">
      <div>
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"value="/wEPDwUKMTU0OTUxODM3NQ9kFgJmD2QWAgIDD2QWAgIBD2QWBAIBDxYCHgtfIUl0ZW1Db3VudAIKFhQCAQ9kFgQCAQ8PFgIeCEltYWdlVXJsBSF1cGxvYWQvSW1hZ2VzL3MyMDE5MTExODA5NTgzNy5qcGdkZAICDxUECjIwMTkvMTEvMTgkNjcyNTFjYjgtMjA0OC00NmMwLTllYWMtNWQ4NjdhZDljYzM4NFRheWFuYSA1NCBTdG9jayBCb2F0IGZvciBzYWxlIHdpdGggIGEgc3BlY2lhbCBwcmljZSA0VGF5YW5hIDU0IFN0b2NrIEJvYXQgZm9yIHNhbGUgd2l0aCAgYSBzcGVjaWFsIHByaWNlIGQCAg9kFgQCAQ8PFgIfAQUhdXBsb2FkL0ltYWdlcy9zMjAxOTAyMTMwNDI0MTAuanBnZGQCAg8VBAkyMDE5LzYvMTgkMDI5NzA3YjMtMGQ1Mi00ZWJmLWEyNTEtMzQyNTgzMTQ0M2NkM05ldyBUQVlBTkEgNTRmdCAgdW5kZXIgY29uc3RydWN0aW9uIChrZWVwIHVwZGF0aW5nKTNOZXcgVEFZQU5BIDU0ZnQgIHVuZGVyIGNvbnN0cnVjdGlvbiAoa2VlcCB1cGRhdGluZylkAgMPZBYEAgEPDxYCHwEFIXVwbG9hZC9JbWFnZXMvczIwMTgxMjIyMDg0OTE1LmpwZ2RkAgIPFQQKMjAxOC8xMi8yMiQxMmY4YzNlMi1mMmZhLTQwNTQtOGQ3Mi1kOGUxZDI2NzRkYzkPTWVycnkgQ2hyaXN0bWFzD01lcnJ5IENocmlzdG1hc2QCBA9kFgQCAQ8PFgIfAQUhdXBsb2FkL0ltYWdlcy9zMjAxODEyMjEwOTE2MTguanBnZGQCAg8VBAoyMDE4LzEyLzIxJDk5ZGQwYzUyLWQ4ZTQtNDNlNS1hMzgzLWNkZDU2ZjYwZmNjMhBUQVlBTkEgTkVXIFY0NjAgEFRBWUFOQSBORVcgVjQ2MCBkAgUPZBYEAgEPDxYCHwEFIXVwbG9hZC9JbWFnZXMvczIwMTgxMDAxMDIyODQ0LmpwZ2RkAgIPFQQJMjAxOC8xMC8xJDQwMDZjYmM3LWY3OWUtNGRhZC1hMDBjLTc3YTBhOTZkM2UzOCVUQVlBTkEgVjQ2MCBFbGVjdHJvbWVjaGFuaWNhbCBUZXN0aW5nJVRBWUFOQSBWNDYwIEVsZWN0cm9tZWNoYW5pY2FsIFRlc3RpbmdkAgYPZBYEAgEPDxYCHwEFIXVwbG9hZC9JbWFnZXMvczIwMTgwMzI2MDQwOTA5LmpwZ2RkAgIPFQQJMjAxOC8zLzE5JDVkZGUwMTM4LTg4YjYtNDBiZi1iMTU5LWYwOTdlOWFjYmY3ZB0yMDE4IFRhaXdhbiBJTlTigJlMIEJvYXQgU2hvdzsyMDE4IFRhaXdhbiBJTlTigJlMIEJvYXQgU2hvdyB3YXMgcm91bmRlZCBvZmYgb24gTWFyY2ggMTh0aGQCBw9kFgQCAQ8PFgIfAQUhdXBsb2FkL0ltYWdlcy9zMjAxODAxMjQxMDM1MjUuanBnZGQCAg8VBAkyMDE4LzEvMjMkNzhlYWFiZjMtOWJjYi00MDI0LWIzZWEtNTgxM2U2NjBhNmNmIk5ldyBUYXlhbmEgVjQ2MCB5YWNodCBsZWZ0IHRvb2xpbmciTmV3IFRheWFuYSBWNDYwIHlhY2h0IGxlZnQgdG9vbGluZ2QCCA9kFgQCAQ8PFgIfAQUhdXBsb2FkL0ltYWdlcy9zMjAxODAxMDkwODIwNTcuanBnZGQCAg8VBAgyMDE4LzEvOSQwNDE0OGI1Mi00NDAyLTQyNWItYjFmZi1kMjMxZTg4YzI1YjcrVEFZQU5BIFlhY2h0cyBDbHViIGF0IEFucGluZyBNYXJpbmEsIFRhaXdhbnRMb2NhdGVkIG9uIHRoZSBTVyBjb2FzdCBvZiB0aGUgaXNsYW5kLCBBbnBpbmcgaXMgYSByZWNlbnRseSBidWlsdCBnb3Zlcm5tZW50IG1hcmluYSBpbiB0aGUgaGlzdG9yaWMgY2l0eSBvZiBUYWluYW4uIGQCCQ9kFgQCAQ8PFgIfAQUhdXBsb2FkL0ltYWdlcy9zMjAxNzA5MjgxMTI5MTAuSlBHZGQCAg8VBAkyMDE3LzkvMjgkOTM4ODg1ZjQtYjUyZS00NTBkLWE3NGItNmNlODY2MmQ2MTNjJVRBWUFOQSA0OCAiT0FIQU5DSEkiIHdpbGwgYmUgZmluaXNoZWQlVEFZQU5BIDQ4ICJPQUhBTkNISSIgd2lsbCBiZSBmaW5pc2hlZGQCCg9kFgQCAQ8PFgIfAQUhdXBsb2FkL0ltYWdlcy9zMjAxNzA3MjYwMzI5NDkuanBnZGQCAg8VBAkyMDE3LzcvMjYkNWE4ZWIxMmYtNWZjYi00ODJhLWExMjUtYjMwMDQ0N2I3NjBhFlRBWUFOQSA0OCBzZXR0aW5nIG1hc3QWVEFZQU5BIDQ4IHNldHRpbmcgbWFzdGQCAw9kFgJmDxYCHgRUZXh0BZcDPGRpdiBjbGFzcz0icGFnaW5hdGlvbiI+5YWxPHNwYW4gc3R5bGU9ImNvbG9yOnJlZCIgPjYzPC9zcGFuPuethuizh+aWmTxzcGFuIGNsYXNzPSJkaXNhYmxlZCI+5LiK5LiA6aCBPC9zcGFuPjxzcGFuIGNsYXNzPSJjdXJyZW50Ij4xPC9zcGFuPjxhIGhyZWY9Im5ld19saXN0LmFzcHg/cGFnZT0yIj4yPC9hPjxhIGhyZWY9Im5ld19saXN0LmFzcHg/cGFnZT0zIj4zPC9hPjxhIGhyZWY9Im5ld19saXN0LmFzcHg/cGFnZT00Ij40PC9hPjxhIGhyZWY9Im5ld19saXN0LmFzcHg/cGFnZT01Ij41PC9hPjxhIGhyZWY9Im5ld19saXN0LmFzcHg/cGFnZT02Ij42PC9hPjxhIGhyZWY9Im5ld19saXN0LmFzcHg/cGFnZT03Ij43PC9hPjxhIGhyZWY9Im5ld19saXN0LmFzcHg/cGFnZT0yIj7kuIvkuIDpoIE8L2E+PC9kaXY+DQpkZGT849R1WVHDZjLk4u2l9a3uRJFI" />
      </div>
      <div>
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B4FB5D2A" />
      </div>
      <!--------------------------------選單開始結束---------------------------------------------------->
      <!--遮罩-->
      <div class="bannermasks">
        <img src="images/banner02_masks.png" alt="&quot;&quot;" />
      </div>
      <!--遮罩結束-->
      <!--<div id="buttom01"><a href="#"><img src="images/buttom01.gif" alt="next" /></a></div>-->
      <!--小圖開始-->
      <!--<div class="bannerimg">
      <ul>
      <li> <a href="#"><div class="on"><p class="bannerimg_p"><img  src="images/pit003.jpg" alt="&quot;&quot;" /></p></div></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" width="300" /></p>
      </a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      </ul>
      <ul>
      <li> <a class="on" href="#"><p class="bannerimg_p"><img  src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <p class="bannerimg_p"><a href="#"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      <li> <a href="#"><p class="bannerimg_p"><img src="images/pit003.jpg" alt="&quot;&quot;" /></p></a></li>
      </ul>
      </div>-->
      <!--小圖結束-->
      <!--<div id="buttom02"> <a href="#"><img src="images/buttom02.gif" alt="next" /></a></div>-->
      <!--------------------------------換圖開始---------------------------------------------------->
      <div class="banner">
        <ul>
          <li>
            <img src="images/newbanner.jpg" alt="Tayana Yachts" />
          </li>
        </ul>
      </div>
      <!--------------------------------換圖結束---------------------------------------------------->
      <div class="conbg">
        <!--------------------------------左邊選單開始---------------------------------------------------->
        <div class="left">
          <div class="left1">
            <p>
              <span>NEWS</span>
            </p>
            <ul>
              <li><a href="new_list.aspx">News & Events</a></li>
            </ul>
          </div>
        </div>
        <!--------------------------------左邊選單結束---------------------------------------------------->
        <!--------------------------------右邊選單開始---------------------------------------------------->
        <div id="crumb">
          <a href="index.aspx">Home</a> >> <a href="new_list.aspx">News </a>>> <a href="new_list.aspx"><span class="on1">News & Events</span></a>
        </div>
        <div class="right">
          <div class="right1">
            <div class="title">
              <span>News & Events</span>
            </div>
            <!--------------------------------內容開始---------------------------------------------------->
            <div class="box2_list">
              <ul>
                  <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                
                </ul>
                  
                
                <div class="pagenumber">
                    <uc1:Pagination runat="server" ID="Pagination" />
                   
                  </div>
                
            </div>
            <!--------------------------------內容結束------------------------------------------------------>
          </div>
        </div>
        <!--------------------------------右邊選單結束---------------------------------------------------->
      </div>
    </form>
</asp:Content>
