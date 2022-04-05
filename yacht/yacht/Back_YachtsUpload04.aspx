<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsUpload04.aspx.cs" Inherits="yacht.Back_YachtsUpload04" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="px-3 py-5 bg-gradient-success text-white">船型電子相簿圖片上傳區</h1>
   <%-- 
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-warning btn-icon-split" Text="新增船種類" />
&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" CssClass="btn btn-success btn-icon-split" Text="DIMENSIONS資料填寫" />
&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" CssClass="btn btn-danger btn-icon-split" style="height: 27px" Text="規格填寫" />
            </p>--%>
            <h2 class="m-0 font-weight-bold text-primary">首頁相片上傳區</h2>
     <br />
            <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
            <br />
            <span class="m-0 font-weight-bold text-primary">船型:</span><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" BackColor="#990033" CssClass="btn btn-primary dropdown-toggle" ForeColor="Aqua">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
            <br />
            <span class="m-0 font-weight-bold text-primary">首頁圖片上傳:</span><asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-info btn-icon-split" Text="上傳圖片" />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
    <h2 class="m-0 font-weight-bold text-primary">相簿相片上傳區</h2>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
            <br />
            <span class="m-0 font-weight-bold text-primary">照片上傳:</span><asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CssClass="btn btn-warning btn-circle btn-lg" Text="上傳" />
            <br />
            <asp:Image ID="Image2" runat="server" />
</asp:Content>
