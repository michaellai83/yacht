<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yachts_detail02.aspx.cs" Inherits="yacht.Yachts_detail02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            船的介紹:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="船的特色" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            船的表格:<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Hulllength" HeaderText="Hulllength" SortExpression="Hulllength" />
                    <asp:BoundField DataField="LWL" HeaderText="LWL" SortExpression="LWL" />
                    <asp:BoundField DataField="BMAX" HeaderText="BMAX" SortExpression="BMAX" />
                    <asp:BoundField DataField="Standarddraft" HeaderText="Standarddraft" SortExpression="Standarddraft" />
                    <asp:BoundField DataField="Ballast" HeaderText="Ballast" SortExpression="Ballast" />
                    <asp:BoundField DataField="Displacement" HeaderText="Displacement" SortExpression="Displacement" />
                    <asp:BoundField DataField="Sailarea" HeaderText="Sailarea" SortExpression="Sailarea" />
                    <asp:BoundField DataField="Cutter" HeaderText="Cutter" SortExpression="Cutter" />
                    <asp:TemplateField HeaderText="圖片" SortExpression="FileName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("FileName") %>'></asp:Label>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~\\UploadTest\\" + Eval("FileName") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [FileName], [initdate] FROM [YACHTS_Layout] WHERE ([yachtid] = @yachtid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <br />
            船設計圖:<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView2_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                    <asp:TemplateField HeaderText="圖片" SortExpression="FileName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~\\UploadTest\\" + Eval("FileName") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [FileName], [initdate] FROM [YACHTS_Layout] WHERE ([yachtid] = @yachtid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
