<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_SearchNews.aspx.cs" Inherits="yacht.Back_SearchNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1 class="font-weight-bold text-info text-uppercase mb-1">新聞搜尋
    </h1>
      <p class="font-weight-bold text-info text-uppercase mb-1">
          <asp:Label ID="Label_Title" runat="server" Text="選擇時間"></asp:Label>
    </p>
      <p class="font-weight-bold text-info text-uppercase mb-1">
          <asp:Label ID="Lab_FirstTime" runat="server" ForeColor="Blue" Text="起始時間:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
    </p>
      <p class="font-weight-bold text-info text-uppercase mb-1">
          <asp:Label ID="Lab_LastTime" runat="server" Text="結束時間:" ForeColor="#CC3300"></asp:Label>
          &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
    </p>
      <p class="font-weight-bold text-info text-uppercase mb-1">
          <asp:Button ID="Btn_Search" runat="server"  Text="搜尋" CssClass="btn btn-warning btn-circle btn-lg" OnClick="Btn_Search_Click" />
    </p>
      <p class="font-weight-bold text-info text-uppercase mb-1">
          <asp:Label ID="Lab_Search" runat="server" Visible="False"></asp:Label>
    </p>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" Visible="False" ForeColor="Black">
        <Columns>
            <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="標題" SortExpression="title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>' NavigateUrl= '<%# "Back_NewsEdit.aspx?ID=" + Eval("id") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="initdate" HeaderText="建立時間" SortExpression="initdate" />
        </Columns>
        <HeaderStyle ForeColor="#0033CC" />
     </asp:GridView>
</asp:Content>
