<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dealers_Mangeraddbase.aspx.cs" Inherits="yacht.Dealers_Mangeraddbase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            請填個人資料<br />
            國家:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [Country], [id] FROM [dealers_country]"></asp:SqlDataSource>
            <br />
            城市:<asp:TextBox ID="City" runat="server"></asp:TextBox>
            <br />
            銷售種類:<asp:TextBox ID="Saletype" runat="server"></asp:TextBox>
            <br />
            聯絡人:<asp:TextBox ID="Contact" runat="server"></asp:TextBox>
            <br />
            地址:<asp:TextBox ID="Add" runat="server"></asp:TextBox>
            <br />
            電話:<asp:TextBox ID="Tel" runat="server"></asp:TextBox>
            <br />
            傳真:<asp:TextBox ID="Fax" runat="server"></asp:TextBox>
            <br />
            E-mail:<asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <br />
            <br />
            個人大頭照<br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Country_sub" runat="server" OnClick="Country_sub_Click" Text="增加" />
            <br />
        </div>
    </form>
</body>
</html>
