<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="compan.aspx.cs" Inherits="yacht.compan" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contain">
    <form name="aspnetForm" method="post" action="compan.html" id="aspnetForm">
        <div class="bannermasks"><img src="images/company.jpg" alt="&quot;&quot;" width="967" height="371" /></div>
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
          <li><img src="images/newbanner.jpg" alt="Tayana Yachts" /></li>
        </ul>
      </div>
        <div class="conbg">
        <!--------------------------------左邊選單開始---------------------------------------------------->
        <div class="left">
          <div class="left1">
            <p><span>COMPANY</span></p>
            <ul>
              <li><a href='compan.aspx' target='_self'>About Us</a></li>
              <li><a href='compan1.aspx' target='_self'>Certificat</a></li>
            </ul>
          </div>
        </div>
        <!--------------------------------左邊選單結束---------------------------------------------------->
        <!--------------------------------右邊選單開始---------------------------------------------------->
        <div id="crumb"><a href="index.aspx">Home</a> >> <a href="compan.aspx">Company </a> >> <a href="compan.aspx"><span class="on1">About Us</span></a></div>
        <div class="right">
          <div class="right1">
            <div class="title"> <span>About Us</span></div>
            <!--------------------------------內容開始---------------------------------------------------->
            <div class="box3">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
              <br />
            </div>
            <!--------------------------------內容結束------------------------------------------------------>
          </div>
        </div>
        <!--------------------------------右邊選單結束---------------------------------------------------->
      </div>
    </form>
        </div>
</asp:Content>
