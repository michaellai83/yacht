<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newlist_Manger.aspx.cs" Inherits="yacht.newlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            News &amp; Events<br />
            新增News<br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            主題:
            <asp:TextBox ID="Textitle" runat="server"></asp:TextBox>
            <br />
            時間:<asp:TextBox ID="Textime" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            內容有無圖片:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="False">沒有</asp:ListItem>
                <asp:ListItem Value="True">有</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            內容:<asp:TextBox ID="Textmain" runat="server" Height="155px" TextMode="MultiLine" Width="632px"></asp:TextBox>
            <br />
            主題的縮圖:<br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <br />
            <asp:Button ID="title_btn" runat="server" Text="送出" OnClick="title_btn_Click" />
            <br />
            <asp:Image ID="Image2" runat="server" Width="30px" />
            <br />
            <br />          
        </div>
        <div  >
            選取主題<br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [title] FROM [NewsTest01]"></asp:SqlDataSource>
            <br />
            上傳圖片<br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:Button ID="upload" runat="server" Text="上傳圖片" OnClick="upload_Click" />
        </div>
    </form>
</body>
</html>
