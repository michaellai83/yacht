<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="yacht.contact"  %>
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
   <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form name="aspnetForm" method="post" action="contact.html" id="aspnetForm" onload="initialize()">
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
            <p><span>CONTACT</span></p>
            <ul>
              <li><a href="contact.aspx">contacts</a></li>
            </ul>
          </div>
        </div>
        <!--------------------------------左邊選單結束---------------------------------------------------->
        <!--------------------------------右邊選單開始---------------------------------------------------->
        <div id="crumb"><a href="index.aspx">Home</a> >> <a href="contact.aspx"><span class="on1">Contact</span></a></div>
        <div class="right">
          <div class="right1">
            <div class="title"> <span>Contact</span></div>
            <!--------------------------------內容開始---------------------------------------------------->
            <!--表單-->
            <div class="from01">
              <p> Please Enter your contact information<span class="span01">*Required</span>
              </p>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
              <table>
                <tr>
                    
                  <td class="from01td01">Name :</td>
                  <td><span>*</span><asp:TextBox runat="server" name="ctl00$ContentPlaceHolder1$Name" id="ctl00_ContentPlaceHolder1_Name"  class="{validate:{required:true, messages:{required:'Required'}}}" style="width:250px;"></asp:TextBox>

                      </td>
                </tr>
                <tr>
                  <td class="from01td01">Email :</td>
                  <td><span>*</span><asp:TextBox runat="server"  name="ctl00$ContentPlaceHolder1$Email" id="ctl00_ContentPlaceHolder1_Email" class="{validate:{required:true, email:true, messages:{required:'Required', email:'Please check the E-mail format is correct'}}}"
                      style="width:250px;"></asp:TextBox>
                      </td>
                </tr>
                <tr>
                  <td class="from01td01">Phone :</td>
                  <td><span>*</span><asp:TextBox runat="server" name="ctl00$ContentPlaceHolder1$Phone"  id="ctl00_ContentPlaceHolder1_Phone"  class="{validate:{required:true, messages:{required:'Required'}}}" style="width:250px;"></asp:TextBox>
                      
                      
                </tr>
                <tr>
                  <td class="from01td01">Country :</td>
                  <td><span>*</span><asp:DropDownList runat="server" name="ctl00$ContentPlaceHolder1$Country" id="ctl00_ContentPlaceHolder1_Country" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="Country" >
                      <asp:ListItem>USA</asp:ListItem>
                      <asp:ListItem>ASIA</asp:ListItem>
                      <asp:ListItem>EUROPE</asp:ListItem>
                      <asp:ListItem>NORTH AMERICA</asp:ListItem>
                      <asp:ListItem>CENTRAL AMERICA</asp:ListItem>
                      <asp:ListItem>SOUTH AMERICA</asp:ListItem>
                      <asp:ListItem>AFRICA</asp:ListItem>
                      <asp:ListItem>OCEANIA</asp:ListItem>
                      </asp:DropDownList>                
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [Country], [id] FROM [dealers_country]"></asp:SqlDataSource>
                  </td>
                </tr>
                <tr>
                  <td colspan="2"><span>*</span>Brochure of interest *Which Brochure would you like to view?</td>
                </tr>
                <tr>
                  <td class="from01td01">&nbsp;</td>
                  <td>
                      <asp:DropDownList runat="server" name="ctl00$ContentPlaceHolder1$Yachts" id="ctl00_ContentPlaceHolder1_Yachts" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
                          <asp:ListItem>Tayana 37</asp:ListItem>
                          <asp:ListItem>Tayana 46</asp:ListItem>
                          <asp:ListItem>Tayana 48</asp:ListItem>
                          <asp:ListItem>54   (New Building)</asp:ListItem>
                          <asp:ListItem>Tayana 58</asp:ListItem>
                          <asp:ListItem>Tayana 64</asp:ListItem>
                          <asp:ListItem>ISARA 50</asp:ListItem>
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [name], [id] FROM [YACHTS]"></asp:SqlDataSource>
                  </td>
                </tr>
                <tr>
                  <td class="from01td01">Comments:</td>
                  <td><asp:TextBox runat="server" name="ctl00$ContentPlaceHolder1$Comments" rows="2" cols="20" id="main" style="height:150px;width:330px;" TextMode="MultiLine"></asp:TextBox>

                  </td>
                </tr>
                <tr>
                  <td class="from01td01">&nbsp;</td>
                  <td class="f_right">
                      <asp:ImageButton runat="server" type="image" name="ctl00$ContentPlaceHolder1$ImageButton1"
                      id="ctl00_ContentPlaceHolder1_ImageButton1" src="images/buttom03.gif" style="border-width:0px;" OnClick="ctl00_ContentPlaceHolder1_ImageButton1_Click"></asp:ImageButton>
                    
                  </td>
                </tr>
              </table>
            </div>
            <!--表單-->
            <div class="box1">
              <span class="span02">Contact with us</span><br />
              Thanks for your enjoying our web site as an introduction to the Tayana world and our range of yachts.
              As all the designs in our range are semi-custom built, we are glad to offer a personal service to all our
              potential customers.
              If you have any questions about our yachts or would like to take your interest a stage further, please
              feel free to contact us.
            </div>
            <div class="list03">
              <p><span>TAYANA HEAD OFFICE</span><br />
                NO.60 Haichien Rd. Chungmen Village Linyuan Kaohsiung Hsien 832 Taiwan R.O.C<br />
                tel. +886(7)641 2422<br />
                fax. +886(7)642 3193<br />
              </p>
            </div>
            <div class="box4" >
              <h4>Location</h4>
         
               <div id="mapp" style="width:695px;height:518px" ></div>


            </div>
            <!--------------------------------內容結束------------------------------------------------------>
          </div>
        </div>
        <!--------------------------------右邊選單結束---------------------------------------------------->
      </div>
        </form>
     <script>
         var map = L.map('mapp').setView([22.605042, 120.300596], 13);

         L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
             attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
         }).addTo(map);

         L.marker([22.605042, 120.300596]).addTo(map)
             .bindPopup('所在位置.<br> ')
             .openPopup();
     </script>
</asp:Content>
