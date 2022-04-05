<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsUpload05.aspx.cs" Inherits="yacht.Back_YachtsUpload05" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="font-weight-bold text-info text-uppercase mb-1">上傳船型PDF檔案</h2>
    <p class="font-weight-bold text-info text-uppercase mb-1">&nbsp;<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></p><br />
   <span class="m-0 font-weight-bold text-primary">選擇船型:</span> <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-success btn-icon-split" Text="上傳" />
</asp:Content>
