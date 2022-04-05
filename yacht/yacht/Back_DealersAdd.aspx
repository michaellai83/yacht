<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_DealersAdd.aspx.cs" Inherits="yacht.Back_DealersAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
     <h2 class="font-weight-bold text-info text-uppercase mb-1">請填個人資料</h2><br />
    <asp:Button ID="Btn_AddCountry" runat="server" Text="新增國家" CssClass="btn btn-danger btn-icon-split" OnClick="Btn_AddCountry_Click" />
            <br />
            <br /> <div class ="col-sm-6 mb-3 mb-sm-0">
            <span class="m-0 font-weight-bold text-primary">國家:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="id" CssClass="btn btn-primary dropdown-toggle" BackColor="White" ForeColor="Black">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [Country], [id] FROM [dealers_country]"></asp:SqlDataSource>
            <br />
    <span class="m-0 font-weight-bold text-primary">城市:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="City" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <span class="m-0 font-weight-bold text-primary">銷售種類:</span><asp:TextBox ID="Saletype" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <span class="m-0 font-weight-bold text-primary">聯絡人:&nbsp; &nbsp; </span><asp:TextBox ID="Contact" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <span class="m-0 font-weight-bold text-primary">地址:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span><asp:TextBox ID="Add" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <span class="m-0 font-weight-bold text-primary">電話:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span><asp:TextBox ID="Tel" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <span class="m-0 font-weight-bold text-primary">傳真:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span><asp:TextBox ID="Fax" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <span class="m-0 font-weight-bold text-primary">E-mail:&nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="Email" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
            <br />
            <br />
            <span class="m-0 font-weight-bold text-primary">個人大頭照</span><br /></div>
           
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Country_sub" runat="server" OnClick="Country_sub_Click" CssClass="btn btn-warning btn-icon-split" Text="增加" />
            <br />
</asp:Content>
