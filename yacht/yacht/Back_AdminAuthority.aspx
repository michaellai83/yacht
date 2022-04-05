<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_AdminAuthority.aspx.cs" Inherits="yacht.Back_AdminAuthority" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="font-weight-bold text-info text-uppercase mb-1">管理者權限選擇
    </h1><br />
    <asp:Label ID="Lab_title" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#CC0000"></asp:Label>

     <br />
    <h2 class="m-0 font-weight-bold text-primary">權限勾選

    </h2>
    <asp:CheckBox name="CH1" ID="CheckBox1"  runat="server" Text="Yacht" Font-Size="Larger" ForeColor="#00CC99" OnCheckedChanged="CheckBox1_CheckedChanged"/>
     <br />
     <asp:CheckBox name="CH1" ID="CheckBox2" runat="server" Text="船型加入" Font-Size="Larger" ForeColor="#00CC00" OnCheckedChanged="CheckBox2_CheckedChanged" />
     <br />
     <asp:CheckBox name="CH1" ID="CheckBox3" runat="server" Text="加入新聞" Font-Size="Larger" ForeColor="#0033CC" OnCheckedChanged="CheckBox3_CheckedChanged" />
     <br />
     <asp:CheckBox name="CH1" ID="CheckBox4" runat="server" Text="編輯關於公司" Font-Size="Larger" ForeColor="Blue" OnCheckedChanged="CheckBox4_CheckedChanged" />
     <br />
     <asp:CheckBox name="CH1" ID="CheckBox5" runat="server" Text="增加供應商" Font-Size="Larger" ForeColor="Blue" OnCheckedChanged="CheckBox5_CheckedChanged" />
     <br />
    <asp:CheckBox ID="checkall" runat="server" Font-Size="Larger" ForeColor="Blue" Text="全選" AutoPostBack="true" OnCheckedChanged="checkall_CheckedChanged" />
    
     <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning btn-icon-split" Text="送出
        " OnClick="Button1_Click" />
    
</asp:Content>
