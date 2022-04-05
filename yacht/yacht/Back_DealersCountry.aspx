<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_DealersCountry.aspx.cs" Inherits="yacht.Back_DealersCountry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
     <h2 class="font-weight-bold text-info text-uppercase mb-1">請填寫國家</h2><br />
     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" ForeColor="#00CC00" OnCheckedChanged="CheckBox2_CheckedChanged" Text="勾選顯示國家列表" />
     　　<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" ForeColor="#CC00FF" OnCheckedChanged="CheckBox1_CheckedChanged" Text="勾選顯示供應商列表" />        
    <br />
            國家:<asp:TextBox ID="Country" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-warning btn-icon-split" Text="增加" />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="GridView2_RowDeleting" Visible="False">
                <Columns>
                    <asp:TemplateField HeaderText="編號">
                        <ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Country" HeaderText="國家" SortExpression="Country" />
                    <asp:BoundField DataField="initdate" HeaderText="創建日期" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i>

</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-primary btn-icon-split btn-lg" Text="跳去個人資料輸入頁面" />
            <br />
            <br />
            <br />
     <h2 class="font-weight-bold text-info text-uppercase mb-1">經銷商資料</h2><br />
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting" Visible="False">
                <Columns>
                    <asp:TemplateField HeaderText="編號">
                        <ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="City" HeaderText="城市" SortExpression="City" />
                    <asp:BoundField DataField="Salestype" HeaderText="銷售種類" SortExpression="Salestype" />
                    <asp:TemplateField HeaderText="聯絡人" SortExpression="Contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("Contact") %>' NavigateUrl='<%# "Back_DealersEdit.aspx?ID=" + Eval("id") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="大頭貼">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Back_DealersPic.ashx?ID=" + Eval("id") %>' height="209px" width="150px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i>

</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT * FROM [dealers_country]"></asp:SqlDataSource>
</asp:Content>
