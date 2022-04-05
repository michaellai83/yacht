<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dealers_Manger.aspx.cs" Inherits="yacht.Dealers_Manger" %>

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
            請填寫國家<br />
            國家:<asp:TextBox ID="Country" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="增加" />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="GridView2_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="編號">
                        <ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Country" HeaderText="國家" SortExpression="Country" />
                    <asp:BoundField DataField="initdate" HeaderText="創建日期" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="跳去個人資料輸入頁面" />
            <br />
            請填個人資料<br />
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
            <asp:Button ID="Country_sub" runat="server" Text="增加" OnClick="Country_sub_Click" />
            <br />
            <br />
            經銷商資料<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="編號">
                        <ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="City" HeaderText="城市" SortExpression="City" />
                    <asp:BoundField DataField="Salestype" HeaderText="銷售種類" SortExpression="Salestype" />
                    <asp:BoundField DataField="Contact" HeaderText="聯絡人" SortExpression="Contact" />
                    <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            上傳照片<br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Sumbit" runat="server" Text="上傳" OnClick="Sumbit_Click" />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT * FROM [dealers_country]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
