<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_NewsShow.aspx.cs" Inherits="yacht.Back_NewsShow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="font-weight-bold text-info text-uppercase mb-1">新聞內容</h2>
     <p class="font-weight-bold text-info text-uppercase mb-1">
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜尋新聞" CssClass="btn btn-warning btn-icon-split" />
     </p>
     <p class="font-weight-bold text-info text-uppercase mb-1">
         <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
             <Columns>
                 <asp:TemplateField HeaderText="編輯" ShowHeader="False">
                     <EditItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-success btn-icon-split" Text="更新"></asp:LinkButton>
                         &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-info btn-icon-split" Text="取消"></asp:LinkButton>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" CssClass="btn btn-primary btn-icon-split"></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                 <asp:TemplateField HeaderText="標題" SortExpression="title">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>' NavigateUrl= '<%# "Back_NewsEdit.aspx?ID=" + Eval("id") %>'></asp:HyperLink>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="是否置頂">
                      <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("isTop") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("isTop") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="initdate" HeaderText="建立時間" SortExpression="initdate" />
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [title], [main], [initdate] FROM [NewsTest01]"></asp:SqlDataSource>
     </p><br />
</asp:Content>
