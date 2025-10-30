<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="supplier_order_tool.aspx.vb" Inherits="supplier_order_tool" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" 
            Text="If you Add New Order?"></asp:Label>
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/order_tools.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink>
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Supplier_Order_No" DataSourceID="SqlDataSource1" 
        GridLines="None" ForeColor="#333333">
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="Supplier_Order_No" HeaderText="Supplier_Order_No" 
                InsertVisible="False" ReadOnly="True" SortExpression="Supplier_Order_No" />
            <asp:BoundField DataField="S_O_Date" HeaderText="S_O_Date" 
                SortExpression="S_O_Date" />
            <asp:BoundField DataField="Supplier_No" HeaderText="Supplier_No" 
                SortExpression="Supplier_No" />
            <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Tools_Name" HeaderText="Tools_Name" 
                SortExpression="Tools_Name" />
        </Columns>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:con1 %>" 
        DeleteCommand="DELETE FROM [tbl_supplier_order] WHERE [Supplier_Order_No] = @original_Supplier_Order_No AND [S_O_Date] = @original_S_O_Date AND [Supplier_No] = @original_Supplier_No AND [Qty] = @original_Qty AND [Price] = @original_Price AND [Tools_Name] = @original_Tools_Name" 
        InsertCommand="INSERT INTO [tbl_supplier_order] ([S_O_Date], [Supplier_No], [Qty], [Price], [Tools_Name]) VALUES (@S_O_Date, @Supplier_No, @Qty, @Price, @Tools_Name)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Supplier_Order_No], [S_O_Date], [Supplier_No], [Qty], [Price], [Tools_Name] FROM [tbl_supplier_order] WHERE ([Employee_No] = @Employee_No)" 
        UpdateCommand="UPDATE [tbl_supplier_order] SET [S_O_Date] = @S_O_Date, [Supplier_No] = @Supplier_No, [Qty] = @Qty, [Price] = @Price, [Tools_Name] = @Tools_Name WHERE [Supplier_Order_No] = @original_Supplier_Order_No AND [S_O_Date] = @original_S_O_Date AND [Supplier_No] = @original_Supplier_No AND [Qty] = @original_Qty AND [Price] = @original_Price AND [Tools_Name] = @original_Tools_Name">
        <SelectParameters>
            <asp:SessionParameter Name="Employee_No" SessionField="User_Id" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_Supplier_Order_No" Type="Int32" />
            <asp:Parameter Name="original_S_O_Date" Type="DateTime" />
            <asp:Parameter Name="original_Supplier_No" Type="Int32" />
            <asp:Parameter Name="original_Qty" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Tools_Name" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="S_O_Date" Type="DateTime" />
            <asp:Parameter Name="Supplier_No" Type="Int32" />
            <asp:Parameter Name="Qty" Type="Decimal" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Tools_Name" Type="String" />
            <asp:Parameter Name="original_Supplier_Order_No" Type="Int32" />
            <asp:Parameter Name="original_S_O_Date" Type="DateTime" />
            <asp:Parameter Name="original_Supplier_No" Type="Int32" />
            <asp:Parameter Name="original_Qty" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Tools_Name" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="S_O_Date" Type="DateTime" />
            <asp:Parameter Name="Supplier_No" Type="Int32" />
            <asp:Parameter Name="Qty" Type="Decimal" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Tools_Name" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
<br />
<br />
<br />
    <br />
    <br />
</asp:Content>

