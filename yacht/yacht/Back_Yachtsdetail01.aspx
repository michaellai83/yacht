<%@ Page Title="" Language="C#" MasterPageFile="~/Back.Master" AutoEventWireup="true" CodeBehind="Back_Yachtsdetail01.aspx.cs" Inherits="yacht.Back_Yachtsdetail01" ValidateRequest="false" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <script src="ckeditor/ckeditor.js"></script>
     <script src="jquery-3.6.0.min.js"></script>
    <script src="ckfinder/ckfinder.js"></script>
     <script type="text/javascript"> 
         var ckediotr;
         $(function () {
             ckediotr = CKEDITOR.replace("<%=Text_Main %>","<%=TextBox2 %>");
             CKFinder.setupCKEditor(ckediotr,"/ckfinder")
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div >
         <h1 class="font-weight-bold text-info text-uppercase mb-1">船的介紹:</h1><br />
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-info btn-icon-split" Text="船的特色" />
            <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="But_Edit" runat="server" OnClick="But_Edit_Click" CssClass="btn btn-warning btn-icon-split" Text="編輯" />
            &nbsp;
         <asp:Button ID="But_Cancel" runat="server" OnClick="But_Cancel_Click" CssClass="btn btn-secondary btn-icon-split" Text="取消編輯" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
         <asp:TextBox ID="Text_Main" runat="server" Visible="False" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>
            <br />
         <asp:Button ID="But_Save" runat="server" OnClick="But_Save_Click" CssClass="btn btn-success btn-icon-split" Text="確認修改" Visible="False" />
            <br />
          <h2 class="font-weight-bold text-info text-uppercase mb-1">船的表格:</h2><br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btn_Table" runat="server" OnClick="Btn_Table_Click" CssClass="btn btn-warning btn-icon-split" Text="編輯" />
            &nbsp;
         <asp:Button ID="Btn_TableCancel" runat="server" OnClick="Btn_TableCancel_Click" CssClass="btn btn-secondary btn-icon-split" Text="取消編輯" />
            <br />
         <asp:Label ID="Lab_table" runat="server" ForeColor="Blue"></asp:Label><br />
         <asp:TextBox ID="TextBox2" runat="server" CssClass="ckeditor" TextMode="MultiLine" Visible="False"></asp:TextBox><br />
          <asp:Button ID="Btn_TableSum" runat="server" CssClass="btn btn-success btn-icon-split" Text="確認修改" OnClick="Btn_TableSum_Click" Visible="False" />
            <br />
            <%-- 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Hulllength" HeaderText="Hulllength" SortExpression="Hulllength" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LWL" HeaderText="LWL" SortExpression="LWL" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="BMAX" HeaderText="BMAX" SortExpression="BMAX" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Standarddraft" HeaderText="Standarddraft" SortExpression="Standarddraft" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Ballast" HeaderText="Ballast" SortExpression="Ballast" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Displacement" HeaderText="Displacement" SortExpression="Displacement" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Sailarea" HeaderText="Sailarea" SortExpression="Sailarea" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Cutter" HeaderText="Cutter" SortExpression="Cutter" ControlStyle-Width="70px" >
<ControlStyle Width="70px"></ControlStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="圖片" SortExpression="FileName">
                        
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~\\UploadTest\\" + Eval("FileName") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="創建時間" SortExpression="initdate">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("initdate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [FileName], [initdate] FROM [YACHTS_Layout] WHERE ([yachtid] = @yachtid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
         --%>
            <br />
            <br />
            <h2 class="font-weight-bold text-info text-uppercase mb-1">船設計圖:</h2><br />
            
            <asp:GridView ID="GridView2" runat="server" DataKeyNames="id" AutoGenerateColumns="False" OnRowDeleting="GridView2_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="編號"><ItemTemplate><%# Container.DataItemIndex + 1%></ItemTemplate></asp:TemplateField>
                    <asp:TemplateField HeaderText="圖片" SortExpression="FileName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~\\UploadTest\\" + Eval("FileName") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="initdate" HeaderText="創建時間" SortExpression="initdate" />
                    <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" class="btn btn-danger btn-circle"  OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"> <i class="fas fa-trash"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YachtConnectionString %>" SelectCommand="SELECT [FileName], [initdate] FROM [YACHTS_Layout] WHERE ([yachtid] = @yachtid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="yachtid" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
</asp:Content>
