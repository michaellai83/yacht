<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Admin.aspx.cs" Inherits="yacht.Back_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 class="font-weight-bold text-info text-uppercase mb-1">管理者資訊
    </h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnDataBound="OnDataBind" ForeColor="Black" HorizontalAlign="Center">
        <Columns>
            <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="帳號" SortExpression="Account">
                
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" CssClass="btn btn-warning btn-icon-split" runat="server" Text='<%# Eval("Account") %>' NavigateUrl='<%# "Back_AdminAuthority.aspx?ID=" + Eval("id") %>'></asp:HyperLink>
                </ItemTemplate>
                <ControlStyle Width="150px" />
            </asp:TemplateField>
            <asp:BoundField DataField="userFirstname" HeaderText="Firstname" SortExpression="userFirstname" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="userLastname" HeaderText="Lastname" SortExpression="userLastname" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Authority" HeaderText="權限" SortExpression="Authority" ControlStyle-Width="50px" >
<ControlStyle Width="50px"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
            <asp:TemplateField HeaderText="編輯" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-success btn-icon-split"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning btn-icon-split"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" CssClass="btn btn-primary btn-icon-split"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle ForeColor="#0066FF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT * FROM [AdminInfo]"></asp:SqlDataSource>
</asp:Content>
