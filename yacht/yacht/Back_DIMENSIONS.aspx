<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_DIMENSIONS.aspx.cs" Inherits="yacht.Back_DIMENSIONS" ValidateRequest="false" EnableEventValidation="false" %>
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
     <h2 class="font-weight-bold text-info text-uppercase mb-1">Dimensions資料填寫</h2>
     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" BackColor="Blue" CssClass="btn btn-secondary dropdown-toggle">
     </asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [name], [id] FROM [YACHTS]"></asp:SqlDataSource>
     <br />
     <asp:TextBox ID="TextBox1" runat="server" CssClass="ckeditor" Height="95px" TextMode="MultiLine" Width="683px"></asp:TextBox>
     <br />
     <asp:Button ID="Btn_Add" runat="server" OnClick="Btn_Add_Click" Text="增加" CssClass="btn btn-warning btn-icon-split" />
     <br />
</asp:Content>
