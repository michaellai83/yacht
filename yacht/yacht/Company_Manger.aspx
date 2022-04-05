<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company_Manger.aspx.cs" Inherits="yacht.Company_Manger" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="//cdn.ckeditor.com/4.17.1/full/ckeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            內容:<asp:TextBox ID="TextBox1" runat="server" Height="337px" TextMode="MultiLine" Width="758px" CssClass="ckeditor"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="送出(about us)" OnClick="Button1_Click" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="送出(Certificat)" />

            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>
