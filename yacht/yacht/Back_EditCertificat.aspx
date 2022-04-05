<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_EditCertificat.aspx.cs" Inherits="yacht.Back_EditCertificat" ValidateRequest="false" EnableEventValidation="false"  %>
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
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    <br />
    <h2 class="font-weight-bold text-info text-uppercase mb-1">修改Certificat的內容</h2>
    <br />
    <br /> 
    <asp:TextBox ID="TextBox1" runat="server" Height="543px" TextMode="MultiLine" Width="747px" CssClass="ckeditor"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="修改" CssClass="btn btn-warning btn-icon-split" OnClick="Button1_Click" />
</asp:Content>
