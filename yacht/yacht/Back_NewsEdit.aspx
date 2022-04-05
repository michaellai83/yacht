<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_NewsEdit.aspx.cs" Inherits="yacht.Back_NewsEdit" ValidateRequest="false" EnableEventValidation="false" %>
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
    <asp:Label ID="Lab_title" runat="server" CssClass="font-weight-bold text-info text-uppercase mb-1" Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btn_Top" runat="server" OnClick="Btn_Top_Click" Text="置頂" CssClass="btn btn-primary btn-icon-split" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btn_CancelTop" runat="server" OnClick="Btn_CancelTop_Click" Text="取消置頂" CssClass="btn btn-success btn-icon-split" />
    <br />
    <asp:Button ID="Btn_Edit" runat="server" OnClick="Btn_Edit_Click" Text="編輯" CssClass="btn btn-danger btn-icon-split" />
&nbsp;
    <asp:Button ID="Btn_CancelEdit" runat="server" OnClick="Btn_CancelEdit_Click" Text="取消編輯" CssClass="btn btn-success btn-icon-split" />
<br />
<br />
<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Lab_Main" runat="server"></asp:Label>
<br />
     <asp:TextBox ID="TextBox1" runat="server" Height="543px" TextMode="MultiLine" Width="747px" CssClass="ckeditor" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="修改" CssClass="btn btn-warning btn-icon-split" OnClick="Button1_Click" Visible="False" />
</asp:Content>
