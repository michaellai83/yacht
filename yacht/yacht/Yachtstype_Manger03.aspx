<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yachtstype_Manger03.aspx.cs" Inherits="yacht.Yachtstype_Manger03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>船的規格</h2>
            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="新增船種類" />
&nbsp;&nbsp;
            <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="DIMENSIONS資料填寫" />
&nbsp;
            <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="新增船照片" />
            <br />
            <br />
            船的種類:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
            <br />
            <br />
            DETAIL SPECIFICATION<br />
            HULL:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            DECK/HARDWARE:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            <br />
            <br />
            ENGINE/MACHINERY:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
            <br />
            <br />
            STEERING:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
            <br />
            <br />
            SPARS/RIGGING :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
            <br />
            <br />
            SAILS:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Button" />
            <br />
            <br />
            INTERIOR:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Button" />
            <br />
            <br />
            ELECTRICAL:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Button" />
            <br />
            <br />
            PLUMBING:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
