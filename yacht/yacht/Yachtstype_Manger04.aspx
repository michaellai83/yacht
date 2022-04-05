<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yachtstype_Manger04.aspx.cs" Inherits="yacht.Yachtstype_Manger04" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>船型電子相簿圖片上傳區</h2>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="新增船種類" />
&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="DIMENSIONS資料填寫" />
&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="height: 27px" Text="規格填寫" />
            </p>
            <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
            <br />
            船型:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
            <br />
            首頁圖片上傳:<asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上傳圖片" />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            相簿相片上傳區<br />
            <br />
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
            <br />
            照片上傳:<asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="上傳" />
            <br />
            <asp:Image ID="Image2" runat="server" />
        </div>
    </form>
</body>
</html>
