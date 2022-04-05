<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Yachtsdetail02.aspx.cs" Inherits="yacht.Back_Yachtsdetail02" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="font-weight-bold text-info text-uppercase mb-1">船的規格</h1><br />
            
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-info btn-icon-split" Text="回船的種類" />
            </p>
    <h2 class="font-weight-bold text-info text-uppercase mb-1">HULL</h2><br />
            
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1">DECK/HARDWARE</h2><br />
            
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView2_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1">ENGINE/MACHINERY</h2><br />
            
            <p>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView3_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1">STEERING</h2><br />
           
            <p>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView4_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1"> SPARS/RIGGING</h2><br />
            
            <p>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView5_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1"> SAILS</h2><br />
           
            <p>
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView6_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1">INTERIOR</h2><br />
           
            <p>
                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView7_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1"> ELECTRICAL</h2><br />
           
            <p>
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView8_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
</asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
    <h2 class="font-weight-bold text-info text-uppercase mb-1"> PLUMBING</h2><br />
        
            <p>
                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView9_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
</asp:TemplateField>
                        <asp:BoundField DataField="main" HeaderText="內容" SortExpression="main" />
                        <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                        <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
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
</asp:Content>
