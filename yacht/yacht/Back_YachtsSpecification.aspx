<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_YachtsSpecification.aspx.cs" Inherits="yacht.Back_YachtsSpecification" ValidateRequest="false" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <script src="ckeditor/ckeditor.js"></script>
     <script src="jquery-3.6.0.min.js"></script>
    <script src="ckfinder/ckfinder.js"></script>
     <script type="text/javascript"> 
         var ckediotr;
         $(function () {
             ckediotr = CKEDITOR.replace("<%=TextBox1 %>");
             CKFinder.setupCKEditor(ckediotr,"/ckfinder")
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="font-weight-bold text-info text-uppercase mb-1">加入船型特色
    </h1><%-- 
     <p class="font-weight-bold text-info text-uppercase mb-1">
         <asp:Button ID="Button10" runat="server" CssClass="btn btn-warning btn-icon-split" OnClick="Button10_Click" Text="新增船種類" />
         &nbsp;&nbsp;
         <asp:Button ID="Button11" runat="server" CssClass="btn btn-success btn-icon-split" OnClick="Button11_Click" Text="DIMENSIONS資料填寫" />
         &nbsp;
         <asp:Button ID="Button12" runat="server" CssClass="btn btn-danger btn-icon-split" OnClick="Button12_Click" Text="新增船照片" />
         <br />
    </p>--%>
    <br />
    <asp:CheckBox ID="CheckBox_Class" runat="server" AutoPostBack="True" ForeColor="#CC3300" OnCheckedChanged="CheckBox_Class_CheckedChanged" Text="打勾開啟增加類別" />
    &nbsp;
     <asp:CheckBox ID="CheckBox_Detail" runat="server" AutoPostBack="True" ForeColor="#CC00FF" OnCheckedChanged="CheckBox_Detail_CheckedChanged" Text="打勾開啟增加特色細節" />
    <br />
    <asp:Label ID="Lab_Class" runat="server" Text="特色類別:" ForeColor="Blue" Visible="False"></asp:Label>&nbsp; <asp:TextBox ID="TB_Class" runat="server" Visible="False"></asp:TextBox>&nbsp; <asp:Button ID="But_Class" runat="server" Text="增加" OnClick="But_Class_Click" Visible="False" />
     <br />
     <br />
     <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Visible="False" OnRowDeleting="GridView1_RowDeleting">
         <Columns>
             <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="編輯" ShowHeader="False">
                 <EditItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-success btn-icon-split"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning btn-icon-split"></asp:LinkButton>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" CssClass="btn btn-primary btn-icon-split"></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="SpecificationName" HeaderText="類別名稱" SortExpression="SpecificationName" />
             <asp:TemplateField HeaderText="創建時間" SortExpression="initdate">
                 
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("initdate") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [SpecificationName], [initdate] FROM [Yachts_Specification]"></asp:SqlDataSource>
     <br />
     <asp:Label ID="Lab_Yacht" runat="server" ForeColor="#FF9900" Text="船型:" Visible="False"></asp:Label>
     <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="id" ForeColor="#0099CC" Visible="False">
     </asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [name] FROM [YACHTS]"></asp:SqlDataSource>
     <br />
     <asp:Label ID="Lab_title" runat="server" ForeColor="#FF9900" Text="類別:" Visible="False"></asp:Label>
     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="SpecificationName" DataValueField="id" ForeColor="Blue" Visible="False">
     </asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [id], [SpecificationName] FROM [Yachts_Specification]"></asp:SqlDataSource>
     <br />
   
     <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="99px" Width="577px" CssClass="ckeditor" Visible="False"></asp:TextBox>
     <br />
     <asp:Button ID="But_Detail" runat="server" OnClick="But_Detail_Click" Text="增加" Visible="False" CssClass="btn btn-success btn-icon-split" />
     <br />
</asp:Content>
