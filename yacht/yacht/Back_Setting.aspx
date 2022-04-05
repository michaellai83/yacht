<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Setting.aspx.cs" Inherits="yacht.Back_Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="font-weight-bold text-info text-uppercase mb-1">管理者密碼更新</h2><br />
    <div class="col-sm-6 mb-3 mb-sm-0"> <asp:Label runat="server" Text="舊的密碼:" ID="Lab_password" ForeColor="#0099CC"></asp:Label>
    &nbsp;<asp:TextBox runat="server" ID="Txt_password" CssClass="form-control form-control-user"></asp:TextBox>
     <br />
    <asp:Label runat="server" Text="新的密碼:" ID="Lab_Newpassword" ForeColor="Red"></asp:Label> &nbsp;<asp:TextBox runat="server" ID="Txt_Newpassword" CssClass="form-control form-control-user"></asp:TextBox>
<br />
<asp:Label ID="Lab_NewSecpassword" runat="server" Text="再次輸入新的密碼:" ForeColor="#FF3300"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_Secpassword" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
<br /></div>
   
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認變更" BackColor="Blue" BorderColor="Fuchsia" ForeColor="#FFFF99" />
</asp:Content>
