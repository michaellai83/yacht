<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yachtstype_Manger02.aspx.cs" Inherits="yacht.Yachtstype_Manger02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回輸入船型頁面" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="規格填寫" />
&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="新增船照片" />
            <br />
            船型:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
            <br />
            DIMENSIONS 填寫<br />
            <br />
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <br />
            Hull length:<asp:TextBox ID="Hulllength" runat="server"></asp:TextBox>
            <br />
            L.W.L. :<asp:TextBox ID="Lwl" runat="server"></asp:TextBox>
            <br />
            B. MAX :<asp:TextBox ID="Bmax" runat="server"></asp:TextBox>
            <br />
            Standard draft :<asp:TextBox ID="Standarddraft" runat="server"></asp:TextBox>
            <br />
            Ballast :<asp:TextBox ID="Ballast" runat="server"></asp:TextBox>
            <br />
            Displacement :<asp:TextBox ID="Displacement" runat="server"></asp:TextBox>
            <br />
            Sail area :<asp:TextBox ID="Sailarea" runat="server"></asp:TextBox>
            <br />
            Cutter:<asp:TextBox ID="Cutter" runat="server"></asp:TextBox>
            <br />
            圖片:<asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="送出" OnClick="Button2_Click" />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            Layout &amp; deck plan 圖片上傳區<br />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            <br />
            圖片:<asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="上傳" />
            <br />
            <asp:Image ID="Image2" runat="server" />
        </div>
    </form>
</body>
</html>
