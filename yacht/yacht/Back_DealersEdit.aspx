<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_DealersEdit.aspx.cs" Inherits="yacht.Back_DealersEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1 class="font-weight-bold text-info text-uppercase mb-1">供應商大頭貼更改區
    </h1>
      <asp:CheckBox ID="CheckBox_Pic" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox_Pic_CheckedChanged" /><asp:Label ID="Lab_pic" runat="server" Text="選取更改大頭照" ForeColor="Blue"></asp:Label>
    &nbsp;
      <asp:CheckBox ID="CheckBox_info" runat="server" AutoPostBack="True" BackColor="Blue" ForeColor="White" OnCheckedChanged="CheckBox_info_CheckedChanged" Text="選取看供應商基本資料" />
    <br />
      <asp:Label ID="Label_Uptitle" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#666699" Text="上傳(更改)大頭照" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Lab_upload" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
    &nbsp;
    <br />
    <asp:Button ID="But_Upload" runat="server" Text="上傳" OnClick="But_Upload_Click" BackColor="Maroon" ForeColor="Aqua" Visible="False" />
    <br />
    <asp:Image ID="Image_Upload" runat="server" />
      <br />
      <br />
    <asp:Label ID="Lab_InfoTitle" runat="server" Text="供應商基本資料" Font-Bold="True" Font-Size="Larger" ForeColor="#CC00FF" Visible="False"></asp:Label>
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Visible="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" HorizontalAlign="Center">
          <Columns>
              <asp:TemplateField HeaderText="編輯" ShowHeader="False">
                  <EditItemTemplate>
                      <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning btn-icon-split"></asp:LinkButton>
                      &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-secondary btn-icon-split"></asp:LinkButton>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" CssClass="btn btn-primary btn-icon-split"></asp:LinkButton>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="City" HeaderText="城市" SortExpression="City" ControlStyle-Width="50px" />
              <asp:BoundField DataField="Salestype" HeaderText="銷售種類" SortExpression="Salestype" ControlStyle-Width="50px" />
              <asp:BoundField DataField="Contact" HeaderText="聯絡人" SortExpression="Contact" />
              <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
              <asp:BoundField DataField="Tel" HeaderText="電話" SortExpression="Tel" ControlStyle-Width="50px" />
              <asp:BoundField DataField="Fax" HeaderText="傳真" SortExpression="Fax" ControlStyle-Width="50px" />
              <asp:BoundField DataField="Email" HeaderText="信箱" SortExpression="Email" />
              <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
          <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [City], [Salestype], [Contact], [Address], [Tel], [Fax], [Email] FROM [dealers] WHERE ([id] = @id)">
          <SelectParameters>
              <asp:QueryStringParameter Name="id" QueryStringField="ID" Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>
</asp:Content>
