<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsUpload01.aspx.cs" Inherits="yacht.Back_YachtsUpload01"  ValidateRequest="false" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <script src="ckeditor/ckeditor.js"></script>
     <script src="jquery-3.6.0.min.js"></script>
    <script src="ckfinder/ckfinder.js"></script>
     <script type="text/javascript"> 
         var ckediotr;
         $(function () {
             ckediotr = CKEDITOR.replace("<%=T_main.ClientID %>");
             CKFinder.setupCKEditor(ckediotr,"/ckfinder")
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="font-weight-bold text-info text-uppercase mb-1">新增船型</h2><br />
            <p><%-- 
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-warning btn-icon-split" Text="新增船照片" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CssClass="btn btn-success btn-icon-split" Text="DIMENSIONS資料填寫" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" CssClass="btn btn-danger btn-icon-split" Text="規格填寫" />
            </p>--%><br />
    <div class="col-sm-6 mb-3 mb-sm-0"><span class="m-0 font-weight-bold text-primary">船型名稱:</span> <asp:TextBox ID="T_name" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br /></div>
           
      <h2 class="m-0 font-weight-bold text-primary">船型介紹:</h2><br />
            <asp:TextBox ID="T_main" runat="server" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary btn-circle btn-lg" Text="送出" />
</asp:Content>
