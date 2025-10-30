<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="tool_info_display.aspx.vb" Inherits="tool_info_display" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
      <asp:Label ID="Label1" runat="server" 
            Text="If you Add New Tools?"></asp:Label>
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/tools_info.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink>
   
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Tools_Name" 
        DataSourceID="SqlDataSource1" CellPadding="4" GridLines="None" 
        ForeColor="#333333">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="Tools_No" HeaderText="Tools_No" 
                SortExpression="Tools_No" />
            <asp:BoundField DataField="Tools_Name" HeaderText="Tools_Name" ReadOnly="True" 
                SortExpression="Tools_Name" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:con1 %>" 
        DeleteCommand="DELETE FROM [tbl_tool_info] WHERE [Tools_Name] = @original_Tools_Name AND [Tools_No] = @original_Tools_No" 
        InsertCommand="INSERT INTO [tbl_tool_info] ([Tools_No], [Tools_Name]) VALUES (@Tools_No, @Tools_Name)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [tbl_tool_info]" 
        UpdateCommand="UPDATE [tbl_tool_info] SET [Tools_No] = @Tools_No WHERE [Tools_Name] = @original_Tools_Name AND [Tools_No] = @original_Tools_No">
        <DeleteParameters>
            <asp:Parameter Name="original_Tools_Name" Type="String" />
            <asp:Parameter Name="original_Tools_No" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Tools_No" Type="String" />
            <asp:Parameter Name="original_Tools_Name" Type="String" />
            <asp:Parameter Name="original_Tools_No" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Tools_No" Type="String" />
            <asp:Parameter Name="Tools_Name" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

