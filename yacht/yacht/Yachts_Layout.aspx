<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="Yachts_Layout.aspx.cs" Inherits="yacht.Yachts_Layout" %>
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
  <link rel="stylesheet" type="text/css" href="css/jquery.ad-gallery.css" />
  <style type="text/css">
    img,
    div,
    input {
      behavior: url("");
    }
  </style>
  <script type="text/javascript" src="Scripts/jquery.ad-gallery.js"></script>
  <script type="text/javascript">
    $(function () {
      var galleries = $('.ad-gallery').adGallery();
      galleries[0].settings.effect = 'fade';
      if ($('.banner input[type=hidden]').val() == "0") {
        $(".bannermasks").hide();
        $(".banner").hide();
        $("#crumb").css("top", "125px");
      }
    });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form name="aspnetForm" method="post" action="Yachts_Layout.html?id=6d245b62-ff07-463b-95b3-277f0e5aac25"
      id="aspnetForm">
      <div>
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
          value="/wEPDwUJOTQ4NDIwODk2D2QWAmYPZBYCAgMPZBYCAgEPZBYMZg9kFgICAg8WAh4LXyFJdGVtQ291bnQCDhYcAgEPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNDI2MTAyODQxLmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQyNjEwMjg0MS5qcGdkAgIPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNDI2MTAzNDI5LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQyNjEwMzQyOS5qcGdkAgMPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNDI2MTA0MjA3LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQyNjEwNDIwNy5qcGdkAgQPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNDE2MTAxNDI4LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQxNjEwMTQyOC5qcGdkAgUPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNTA4MDQ0ODQ1LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDUwODA0NDg0NS5qcGdkAgYPZBYCZg8VAiN1cGxvYWQvSW1hZ2VzLzIwMTIwNDAyMDQzNTAyLS0xLmpwZyR1cGxvYWQvSW1hZ2VzL3MyMDEyMDQwMjA0MzUwMi0tMS5qcGdkAgcPZBYCZg8VAiN1cGxvYWQvSW1hZ2VzLzIwMTIwNDAyMDQzNTA5LS0xLmpwZyR1cGxvYWQvSW1hZ2VzL3MyMDEyMDQwMjA0MzUwOS0tMS5qcGdkAggPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNDE0MTIxMTQyLmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQxNDEyMTE0Mi5qcGdkAgkPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNDE0MTIxMzE5LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQxNDEyMTMxOS5qcGdkAgoPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNjEzMDk1OTMzLmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDYxMzA5NTkzMy5qcGdkAgsPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNjEzMDk1OTQzLmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDYxMzA5NTk0My5qcGdkAgwPZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNjEzMDk1OTU5LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDYxMzA5NTk1OS5qcGdkAg0PZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNjEzMTAwMDE4LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDYxMzEwMDAxOC5qcGdkAg4PZBYCZg8VAiB1cGxvYWQvSW1hZ2VzLzIwMTIwNjEzMTAwMDI5LmpwZyF1cGxvYWQvSW1hZ2VzL3MyMDEyMDYxMzEwMDAyOS5qcGdkAgEPFgIfAAIHFg4CAQ9kFgJmDxUCOllhY2h0c19MYXlvdXQuYXNweD9pZD02ZDI0NWI2Mi1mZjA3LTQ2M2ItOTViMy0yNzdmMGU1YWFjMjUJVGF5YW5hIDM3ZAICD2QWAmYPFQI6WWFjaHRzX0xheW91dC5hc3B4P2lkPTVmYjg0ZTE1LTA0MTQtNDRmOS1iNzIzLTMyYTFjNDY4NWFhMwlUYXlhbmEgNDZkAgMPZBYCZg8VAjpZYWNodHNfTGF5b3V0LmFzcHg/aWQ9YzBhZTZjNjktN2IzNi00ODZkLTk3ZTYtZmQzYmYyMDA2NGU1CVRheWFuYSA0OGQCBA9kFgJmDxUCOllhY2h0c19MYXlvdXQuYXNweD9pZD03ODJhMjg2Mi1lZGUxLTRmOGUtOWUyZS1kM2U4OGRkMGUzNTYaVGF5YW5hIDU0ICAgKE5ldyBCdWlsZGluZylkAgUPZBYCZg8VAjpZYWNodHNfTGF5b3V0LmFzcHg/aWQ9OGZhNWNlM2UtNDM3Zi00YjFiLWI3MTctMjYwMmU3MTU4ZTQwCVRheWFuYSA1OGQCBg9kFgJmDxUCOllhY2h0c19MYXlvdXQuYXNweD9pZD1lZTk1MWRkYS1mYWQ4LTQyYjktOTA1Ni01MjQ3MzE3MGQ3MjkJVGF5YW5hIDY0ZAIHD2QWAmYPFQI6WWFjaHRzX0xheW91dC5hc3B4P2lkPTNjNTA3ODU3LWU2ZGEtNDRlMC05NWFiLWYwNThkNzkzYzA5YQhJU0FSQSA1MGQCAg8WAh4EVGV4dAUJVGF5YW5hIDM3ZAIDDxYCHwEFCVRheWFuYSAzN2QCBA8PFgIeB1Zpc2libGVoZGQCBQ8WAh8AAgIWBAIBD2QWAmYPFQEjdXBsb2FkL0ltYWdlcy8yMDEyMDQwNTAyNTc0My0tMS5qcGdkAgIPZBYCZg8VASN1cGxvYWQvSW1hZ2VzLzIwMTIwNDA1MDI1NzU4LS0xLmpwZ2RkhjNfYeh3BcfwdZPmIU3o5ner2lM=" />
      </div>
      <div>
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AB8E19D1" />
        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
          value="/wEWAgLiodrqDQL9+YC2DRb9IW7sDgbGvg4SsnNgNTB03iKa" />
      </div>
      <!--------------------------------選單開始結束---------------------------------------------------->
      <!--遮罩-->
      <div class="bannermasks">
        <img src="images/banner01_masks.png" alt="&quot;&quot;" />
      </div>
      <!--遮罩結束-->
      <div class="banner1">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$Gallery1$HiddenField1"
          id="ctl00_ContentPlaceHolder1_Gallery1_HiddenField1" value="1" />
        <div id="gallery" class="ad-gallery">
          <div class="ad-image-wrapper">
          </div>
          <div class="ad-controls">
          </div>
          <div class="ad-nav">
            <div class="ad-thumbs">
              <ul class="ad-thumb-list">
                <asp:Literal ID="Lite_picbox" runat="server"></asp:Literal>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="conbg">
        <!--------------------------------左邊選單開始---------------------------------------------------->
        <div class="left">
          <div class="left1">
            <p>
              <span>YACHTS</span>
            </p>
            <ul>
             <asp:Literal ID="Lit_lift" runat="server"></asp:Literal>
            </ul>
          </div>
        </div>
        <!--------------------------------左邊選單結束---------------------------------------------------->
        <!--------------------------------右邊選單開始---------------------------------------------------->
        <div id="crumb1">
          <a href="index.html">Home</a> >> <a href="#">Yachts</a> >> <asp:Literal ID="Lit_topa" runat="server"></asp:Literal>
        </div>
        <div class="right">
          <div class="right1">
            <div class="title">
                <asp:Label ID="Lab_title" runat="server" Text=""></asp:Label>
             
            </div>
            <!--------------------------------內容開始---------------------------------------------------->
            <!--次選單-->
            <div class="menu_y">
              <ul>
                <li class="menu_y00">YACHTS</li>
                 <asp:Literal ID="Lit_maintopa" runat="server"></asp:Literal>
                <li>
                </li>
              </ul>
            </div>
            <!--次選單-->
            <div class="box6">
              <p> Layout & deck plan</p>
              <ul>
                  <asp:Literal ID="Lit_main" runat="server"></asp:Literal>
              </ul>
            </div>
            <div class="clear">
            </div>
            <!--------------------------------內容結束------------------------------------------------------>
          </div>
        </div>
        <!--------------------------------右邊選單結束---------------------------------------------------->
      </div>
    </form>
</asp:Content>
