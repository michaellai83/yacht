<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yachts_detail03.aspx.cs" Inherits="yacht.Yachts_detail03" %>

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
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回船的種類" />
            </p>
            <p>HULL</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [yachtid], [main], [initdate] FROM [YACHTS_Hull] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                DECK/HARDWARE</p>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView2_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Deck] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                ENGINE/MACHINERY</p>
            <p>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView3_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Engine] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                STEERING</p>
            <p>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView4_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Steering] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                SPARS/RIGGING</p>
            <p>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView5_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Spars] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                SAILS</p>
            <p>
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView6_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Sails] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                INTERIOR</p>
            <p>
                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView7_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Interior] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                ELECTRICAL</p>
            <p>
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView8_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
</asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Electrical] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                PLUMBING</p>
            <p>
                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView9_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
</asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [main], [initdate] FROM [YACHTS_Plumbing] WHERE ([yachtid] = @yachtid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
