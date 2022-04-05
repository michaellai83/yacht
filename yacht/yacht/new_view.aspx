<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="new_view.aspx.cs" Inherits="yacht.new_view" %>
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
    <form name="aspnetForm" method="post" action="new_view.html?id=67251cb8-2048-46c0-9eac-5d867ad9cc38"
      id="aspnetForm">
      <div>
        
      <!--------------------------------選單開始結束---------------------------------------------------->
      <!--遮罩-->
      <div class="bannermasks"><img src="images/banner02_masks.png" alt="&quot;&quot;" /></div>
      <!--小圖結束-->
      <!--<div id="buttom02"> <a href="#"><img src="images/buttom02.gif" alt="next" /></a></div>-->
      <!--------------------------------換圖開始---------------------------------------------------->
      <div class="banner">
        <ul>
          <li><img src="images/newbanner.jpg" alt="Tayana Yachts" /></li>
        </ul>
      </div>
      <!--------------------------------換圖結束---------------------------------------------------->
      <div class="conbg">
        <!--------------------------------左邊選單開始---------------------------------------------------->
        <div class="left">
          <div class="left1">
            <p><span>NEWS</span></p>
            <ul>
              <li><a href="new_list.aspx">News & Events</a></li>
            </ul>
          </div>
        </div>
        <!--------------------------------左邊選單結束---------------------------------------------------->
        <!--------------------------------右邊選單開始---------------------------------------------------->
        <div id="crumb"><a href="index.aspx">Home</a> >> <a href="new_list.aspx">News </a> >> <a href="new_list.aspx"><span class="on1">News & Events</span></a></div>
        <div class="right">
          <div class="right1">
            <div class="title"> <span>News & Events</span></div>
            <!--------------------------------內容開始---------------------------------------------------->
            <div class="box3">
                <asp:Literal ID="Lit_title" runat="server"></asp:Literal>
                <asp:Literal ID="Lit_main" runat="server"></asp:Literal>
            </div>
            <!--下載開始-->
            <!--下載結束-->
            <div class="buttom001"><a href="javascript:window.history.back();"><img src="images/back.gif"alt="&quot;&quot;" width="55" height="28" /></a></div>
            <!--------------------------------內容結束------------------------------------------------------>
          </div>
        </div>
        <!--------------------------------右邊選單結束---------------------------------------------------->
      </div>
    </form>
    </div>
</asp:Content>
