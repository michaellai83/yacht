<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsUpload03.aspx.cs" Inherits="yacht.Back_YachtsUpload03" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>船的規格</h2>
            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" CssClass="btn btn-warning btn-icon-split" Text="新增船種類" />
&nbsp;&nbsp;
            <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" CssClass="btn btn-success btn-icon-split" Text="DIMENSIONS資料填寫" />
&nbsp;
            <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" CssClass="btn btn-danger btn-icon-split" Text="新增船照片" />
            <br />
            <br />
            船的種類:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
            <br />
            <br />
            DETAIL SPECIFICATION<br />
            HULL:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-secondary btn-icon-split" Text="送出" />
            <br />
            <br />
            DECK/HARDWARE:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-primary btn-icon-split" Text="送出" />
            <br />
            <br />
            ENGINE/MACHINERY:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CssClass="btn btn-primary btn-icon-split" Text="送出" />
            <br />
            <br />
            STEERING:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" CssClass="btn btn-primary btn-icon-split" Text="送出" />
            <br />
            <br />
            SPARS/RIGGING :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" CssClass="btn btn-primary btn-icon-split" Text="送出" />
            <br />
            <br />
            SAILS:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" CssClass="btn btn-primary btn-icon-split" Text="送出" />
            <br />
            <br />
            INTERIOR:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" CssClass="btn btn-primary btn-icon-split" Text="送出" />
            <br />
            <br />
            ELECTRICAL:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="送出" CssClass="btn btn-primary btn-icon-split" />
            <br />
            <br />
            PLUMBING:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" CssClass="btn btn-primary btn-icon-split" Text="送出" />
</asp:Content>
