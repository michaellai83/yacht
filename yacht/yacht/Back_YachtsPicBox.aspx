<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsPicBox.aspx.cs" Inherits="yacht.Back_YachtsPicBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="font-weight-bold text-info text-uppercase mb-1">船的電子相簿</h1><br />
    <asp:Label ID="Lab_name" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#CC00FF"></asp:Label>
    &nbsp;
    <asp:Button ID="But_order" runat="server" OnClick="But_order_Click" Text="編輯幻燈片順序" CssClass="btn btn-success btn-icon-split" />
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-info btn-icon-split" Text="首頁相簿置頂" />
&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消置頂" CssClass="btn btn-warning btn-icon-split" />
    <br />
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
    </asp:CheckBoxList>
    <br />
    <asp:Button ID="But_Del" runat="server" Text="確認刪除" CssClass="btn btn-danger btn-icon-split" OnClick="But_Del_Click" />
    <br />
</asp:Content>
