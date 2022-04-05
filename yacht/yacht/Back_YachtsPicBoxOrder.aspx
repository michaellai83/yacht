<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsPicBoxOrder.aspx.cs" Inherits="yacht.Back_YachtsPicBoxOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ForeColor="Black" HorizontalAlign="Center">
        <Columns>
            <asp:TemplateField HeaderText="編輯" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-success btn-icon-split"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning btn-icon-split"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" CssClass="btn btn-primary btn-icon-split"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="order" HeaderText="順序" SortExpression="order" />
            <asp:TemplateField HeaderText="電子相簿圖片">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server"  ImageUrl='<%# "~/Back_YachtsPicBox.ashx?ID=" + Eval("id") %>' height="256px" width="356px"  />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="建立時間" SortExpression="initdate">
               <%--
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("initdate") %>' ReadOnly="true"></asp:TextBox>
                </EditItemTemplate>
                --%>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("initdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle Font-Bold="True" ForeColor="#0033CC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [FileName], [order], [initdate] FROM [YACHTS_picbox]"></asp:SqlDataSource>
</asp:Content>
