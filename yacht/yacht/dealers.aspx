<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="dealers.aspx.cs" Inherits="yacht.dealers" %>
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
            <p><span>DEALERS</span></p>
            <ul>
                <asp:Literal ID="Lite_Dealers" runat="server"></asp:Literal>
            </ul>
          </div>
        </div>
        <!--------------------------------左邊選單結束---------------------------------------------------->
        <!--------------------------------右邊選單開始---------------------------------------------------->
        <div id="crumb"><a href="index.aspx">Home</a> >> <a href="dealers.aspx">Dealers </a><asp:Literal ID="Lit_crumb" runat="server"></asp:Literal>
              </div>
        <div class="right">
          <div class="right1">
            <div class="title">
                <asp:Label ID="Lbl_country" runat="server" Text=""></asp:Label></div>
            <!--------------------------------內容開始---------------------------------------------------->
            <div class="box2_list">
              <ul>
                  <asp:Literal ID="Lit_right" runat="server"></asp:Literal>

              </ul>
              <div class="pagenumber"> </div>
            </div>
            <!--------------------------------內容結束------------------------------------------------------>
          </div>
        </div>
        <!--------------------------------右邊選單結束---------------------------------------------------->
      </div>
    </form>
</asp:Content>
