<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Search.aspx.cs" Inherits="yacht.Back_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="font-weight-bold text-info text-uppercase mb-1">新聞搜尋結果</h1>
     <p class="font-weight-bold text-info text-uppercase mb-1">
         <asp:Label ID="Lab_Search" runat="server" Visible="False"></asp:Label>
     </p><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" ForeColor="Black">
        <Columns>
            <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="標題" SortExpression="title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>' NavigateUrl= '<%# "Back_NewsEdit.aspx?ID=" + Eval("id") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="initdate" HeaderText="建立時間" SortExpression="initdate" />
        </Columns>
        <HeaderStyle Font-Bold="True" ForeColor="#0033CC" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [title], [initdate] FROM [NewsTest01]"></asp:SqlDataSource>
</asp:Content>
