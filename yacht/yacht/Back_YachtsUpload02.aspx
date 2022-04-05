<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsUpload02.aspx.cs" Inherits="yacht.Back_YachtsUpload02" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<h2 class="font-weight-bold text-info text-uppercase mb-1">DIMENSIONS 填寫</h2><br /> --%> 
     <h2 class="m-0 font-weight-bold text-primary">Layout &amp; deck plan 圖片上傳區</h2>
            <br /><%-- 
     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-warning btn-icon-split" Text="回輸入船型頁面" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" CssClass="btn btn-success btn-icon-split" Text="規格填寫" />
&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" CssClass="btn btn-danger btn-icon-split" Text="新增船照片" />
            &nbsp;
     <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="DIMENSIONS" CssClass="btn btn-primary btn-icon-split" />--%>
            <br />
             <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <br /> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
      <%-- 船型:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            
            <br />
    
            
            <br />
  
           
  
            Hull length:<asp:TextBox ID="Hulllength" runat="server"></asp:TextBox>
            <br />
            L.W.L. :<asp:TextBox ID="Lwl" runat="server"></asp:TextBox>
            <br />
            B. MAX :<asp:TextBox ID="Bmax" runat="server"></asp:TextBox>
            <br />
            Standard draft :<asp:TextBox ID="Standarddraft" runat="server"></asp:TextBox>
            <br />
            Ballast :<asp:TextBox ID="Ballast" runat="server"></asp:TextBox>
            <br />
            Displacement :<asp:TextBox ID="Displacement" runat="server"></asp:TextBox>
            <br />
            Sail area :<asp:TextBox ID="Sailarea" runat="server"></asp:TextBox>
            <br />
            Cutter:<asp:TextBox ID="Cutter" runat="server"></asp:TextBox>
            <br />
            圖片:<asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="送出" CssClass="btn btn-success btn-circle btn-lg" OnClick="Button2_Click" />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
        --%>
            <br />
    
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            <br />
            圖片:<asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CssClass="btn btn-success btn-circle btn-lg" Text="上傳" />
            <br />
            <asp:Image ID="Image2" runat="server" />
</asp:Content>
