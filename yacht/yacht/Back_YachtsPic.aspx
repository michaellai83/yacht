<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsPic.aspx.cs" Inherits="yacht.Back_YachtsPic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="font-weight-bold text-info text-uppercase mb-1">船型首頁圖</h1>
     <p class="font-weight-bold text-info text-uppercase mb-1">
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="相片上傳區" CssClass="btn btn-success btn-icon-split" />
     </p>
     <p class="font-weight-bold text-info text-uppercase mb-1">
         <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="id" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" ForeColor="#00CCFF">
             <Columns>
                 <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                 <asp:TemplateField HeaderText="船名" SortExpression="name">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Bind("name") %>' NavigateUrl='<%# "Back_YachtsPicBox.aspx?ID=" + Eval("id") %>' ></asp:HyperLink>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="首頁圖片">
                     <ItemTemplate>
                         <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Back_YachtsHomePic.ashx?ID=" + Eval("id") %>' height="256px" width="356px" />
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <HeaderStyle Font-Bold="True" ForeColor="#009933" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [name], [initdate], [id] FROM [YACHTS]"></asp:SqlDataSource>
     </p><br />
</asp:Content>
