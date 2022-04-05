<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Profile.aspx.cs" Inherits="yacht.Back_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="font-weight-bold text-info text-uppercase mb-1">使用者資訊
    </h2>
    <br />
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
<br />
    <asp:Label ID="Label2" runat="server" ForeColor="#0066FF" Text="Firstname: "></asp:Label>
    <asp:Label ID="Lab_Firstname" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" ForeColor="#00CC00" Text="Lastname: "></asp:Label>
    <asp:Label ID="Lab_Lastname" runat="server" Text=""></asp:Label>
    <br />
    <asp:Image ID="Image_userpic" runat="server" Width="200px" />
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" BorderColor="White" ForeColor="Black" />
    <br />
    <asp:Button ID="Button_Upload" runat="server" Text="上傳" OnClick="Button_Upload_Click" BackColor="Blue" BorderColor="White" ForeColor="#FF66FF" />
    <br />
    <asp:Image ID="Image_Upload" runat="server" />
</asp:Content>
