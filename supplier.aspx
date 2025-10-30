<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="supplier.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table><tr><td style="width: 545px; height: 23px;">
    <asp:Label ID="Label1" runat="server" 
            Text="If you Add New Supplier?"></asp:Label>
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/insertsupplier.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink>
   
    </td></tr>
<tr><td style="width: 545px">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Supplier_No" 
        DataSourceID="SqlDataSource1" CellPadding="4" 
        GridLines="None" ForeColor="#333333">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="Supplier_No" HeaderText="Supplier_No" 
                ReadOnly="True" SortExpression="Supplier_No" />
            <asp:BoundField DataField="S_Name" HeaderText="S_Name" 
                SortExpression="S_Name" />
            <asp:BoundField DataField="S_Address" HeaderText="S_Address" 
                SortExpression="S_Address" />
            <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" 
                SortExpression="Contact_No" />
            <asp:BoundField DataField="S_Email_id" HeaderText="S_Email_id" 
                SortExpression="S_Email_id" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
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
        DeleteCommand="DELETE FROM [tbl_Supplier] WHERE [Supplier_No] = @original_Supplier_No AND [S_Name] = @original_S_Name AND [S_Address] = @original_S_Address AND [Contact_No] = @original_Contact_No AND [S_Email_id] = @original_S_Email_id AND [City] = @original_City AND [State] = @original_State" 
        InsertCommand="INSERT INTO [tbl_Supplier] ([S_Name], [S_Address], [Contact_No], [S_Email_id], [City], [State]) VALUES (@S_Name, @S_Address, @Contact_No, @S_Email_id, @City, @State)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Supplier_No], [S_Name], [S_Address], [Contact_No], [S_Email_id], [City], [State] FROM [tbl_Supplier] WHERE ([Employee_No] = @Employee_No)" 
        
        UpdateCommand="UPDATE [tbl_Supplier] SET [S_Name] = @S_Name, [S_Address] = @S_Address, [Contact_No] = @Contact_No, [S_Email_id] = @S_Email_id, [City] = @City, [State] = @State WHERE [Supplier_No] = @original_Supplier_No AND [S_Name] = @original_S_Name AND [S_Address] = @original_S_Address AND [Contact_No] = @original_Contact_No AND [S_Email_id] = @original_S_Email_id AND [City] = @original_City AND [State] = @original_State">
        <SelectParameters>
            <asp:SessionParameter Name="Employee_No" SessionField="User_Id" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_Supplier_No" Type="String" />
            <asp:Parameter Name="original_S_Name" Type="String" />
            <asp:Parameter Name="original_S_Address" Type="String" />
            <asp:Parameter Name="original_Contact_No" Type="Decimal" />
            <asp:Parameter Name="original_S_Email_id" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="S_Name" Type="String" />
            <asp:Parameter Name="S_Address" Type="String" />
            <asp:Parameter Name="Contact_No" Type="Decimal" />
            <asp:Parameter Name="S_Email_id" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="original_Supplier_No" Type="Int32" />
            <asp:Parameter Name="original_S_Name" Type="String" />
            <asp:Parameter Name="original_S_Address" Type="String" />
            <asp:Parameter Name="original_Contact_No" Type="Decimal" />
            <asp:Parameter Name="original_S_Email_id" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="S_Name" Type="String" />
            <asp:Parameter Name="S_Address" Type="String" />
            <asp:Parameter Name="Contact_No" Type="Decimal" />
            <asp:Parameter Name="S_Email_id" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </td></tr>
</table>
</asp:Content>

