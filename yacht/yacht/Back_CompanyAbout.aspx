﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_CompanyAbout.aspx.cs" Inherits="yacht.Back_CompanyAbout"  ValidateRequest="false" EnableEventValidation="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <script src="ckeditor/ckeditor.js"></script>
     <script src="jquery-3.6.0.min.js"></script>
    <script src="ckfinder/ckfinder.js"></script>
     <script type="text/javascript"> 
         var ckediotr;
         $(function () {
             ckediotr = CKEDITOR.replace("<%=TextBox1 %>");
             CKFinder.setupCKEditor(ckediotr,"/ckfinder")
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CssClass="btn btn-danger btn-icon-split" Text="修改現有內文" />
     <br />
     <h2 class="font-weight-bold text-info text-uppercase mb-1">新增關於公司的內容</h2><br />
     <asp:TextBox ID="TextBox1" runat="server" Height="337px" TextMode="MultiLine" Width="758px" CssClass="ckeditor"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="送出(about us)" CssClass="btn btn-warning btn-icon-split" OnClick="Button1_Click" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-warning btn-icon-split" Text="送出(Certificat)" />

            <br />
            <br />
            </asp:Content>
