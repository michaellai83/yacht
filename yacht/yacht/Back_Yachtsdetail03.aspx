<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Yachtsdetail03.aspx.cs" Inherits="yacht.Back_Yachtsdetail03"  ValidateRequest="false" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <script src="ckeditor/ckeditor.js"></script>
     <script src="jquery-3.6.0.min.js"></script>
    <script src="ckfinder/ckfinder.js"></script>
     <script type="text/javascript"> 
         var ckediotr;
         $(function () {
             ckediotr = CKEDITOR.replace("<%=Text_Hull %>");
             CKFinder.setupCKEditor(ckediotr,"/ckfinder")
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="font-weight-bold text-info text-uppercase mb-1">船的特色:</h1><br />
    <h2 class="font-weight-bold text-info text-uppercase mb-1">類別:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="SpecificationName" DataValueField="id" ForeColor="#00CC00" BackColor="White" CssClass="btn btn-primary dropdown-toggle">
        </asp:DropDownList>
&nbsp;<asp:Button ID="Btn_DB" runat="server" OnClick="Btn_DB_Click" Text="查詢" CssClass="btn btn-primary btn-icon-split"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [SpecificationName] FROM [Yachts_Specification]"></asp:SqlDataSource>
     </h2><br />
     <asp:Button ID="Btn_HullEdit" runat="server" OnClick="Btn_HullEdit_Click" Text="編輯" CssClass="btn btn-warning btn-icon-split" />
&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Btn_HullCancel" runat="server" OnClick="Btn_HullCancel_Click" Text="取消編輯" CssClass="btn btn-secondary btn-icon-split" />
     <br />
    <asp:Label ID="Lab_Hull" runat="server" Font-Size="Larger" ForeColor="#0066FF"></asp:Label>
     <br />
     <asp:TextBox ID="Text_Hull" runat="server" Height="130px" TextMode="MultiLine" Width="643px" CssClass="ckeditor" Visible="False"></asp:TextBox>
     <br />
     <asp:Button ID="Btn_Update" runat="server" OnClick="Btn_Update_Click" Text="更新" CssClass="btn btn-info btn-icon-split" Visible="False" />
</asp:Content>
