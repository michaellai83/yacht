<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yachtstype_Manger01.aspx.cs" Inherits="yacht.Yachtstype_Manger01" validateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    



</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>新增船型</h2>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="新增船照片" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="DIMENSIONS資料填寫" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="規格填寫" />
            </p><br />
            船型名稱:<asp:TextBox ID="T_name" runat="server"></asp:TextBox>
            <br />
            船型介紹:<asp:TextBox ID="T_main" runat="server" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="送出" />
        </div>
    </form>
</body>
</html>
