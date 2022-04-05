<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yachts_detail01.aspx.cs" Inherits="yacht.Yachts_detail01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            船型:<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                    <asp:TemplateField HeaderText="船型" SortExpression="name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("name") %>' NavigateUrl='<%# "Yachts_detail02.aspx?ID=" + Eval("id") %>' ></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="initdate" HeaderText="新增時間" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main] FROM [YACHTS_Deck]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
