<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Newsadd.aspx.cs" Inherits="yacht.Back_Newsadd" ValidateRequest="false" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <script src="ckeditor/ckeditor.js"></script>
     <script src="jquery-3.6.0.min.js"></script>
    <script src="ckfinder/ckfinder.js"></script>
     <script type="text/javascript"> 
         var ckediotr;
         $(function () {
             ckediotr = CKEDITOR.replace("<%=Textmain.ClientID %>");
             CKFinder.setupCKEditor(ckediotr,"/ckfinder")
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="font-weight-bold text-info text-uppercase mb-1">News &amp; Events</h1><br />
            <p  class="m-0 font-weight-bold text-primary">新增News</p><br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <br /><div class="col-sm-6 mb-3 mb-sm-0">
            <span class="h3 mb-0 text-gray-800">主題:</span>
            <asp:TextBox ID="Textitle" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <span class="h3 mb-0 text-gray-800">時間:</span><asp:TextBox ID="Textime" runat="server" TextMode="Date" CssClass="form-control form-control-user"></asp:TextBox>
            <br /><span class="h3 mb-0 text-gray-800">內容有無圖片:</span>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="m-0 font-weight-bold text-primary">
                <asp:ListItem Value="False">沒有</asp:ListItem>
                <asp:ListItem Value="True">有</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <span class="h3 mb-0 text-gray-800">內容:</span><asp:TextBox ID="Textmain" runat="server" Height="441px" TextMode="MultiLine" Width="655px"  CssClass="ckeditor"></asp:TextBox>
            <br />
            <span class="h3 mb-0 text-gray-800">主題的縮圖:</span><br />
            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="btn btn-info btn-icon-split" />
            <br />
            <br />
            <asp:Button ID="title_btn" runat="server" Text="送出" CssClass="btn btn-success btn-icon-split" OnClick="title_btn_Click" />
            <br />
            <asp:Image ID="Image2" runat="server" Width="30px" />
            <br /><span class="h3 mb-0 text-gray-800">選取主題</span>
    <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [title] FROM [NewsTest01]"></asp:SqlDataSource>
            <br />
            <span class="h3 mb-0 text-gray-800">上傳圖片</span><br />
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="m-0 font-weight-bold text-primary" />
            <br />
            
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:Button ID="upload" runat="server" Text="上傳圖片" CssClass="btn btn-success btn-icon-split" OnClick="upload_Click" />
            <br />          
        </div>
        
</asp:Content>
