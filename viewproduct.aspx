<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="viewproduct.aspx.vb" Inherits="viewproduct" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" 
            Text="If you Add New Product Info?"></asp:Label>
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/addproduct.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink>
      
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="Product_Name" 
            DataSourceID="SqlDataSource1" CellPadding="4" GridLines="None" 
            ForeColor="#333333">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="Product_No" HeaderText="Product_No" 
                    SortExpression="Product_No" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                    ReadOnly="True" SortExpression="Product_Name" />
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
            DeleteCommand="DELETE FROM [tbl_product_info] WHERE [Product_Name] = @original_Product_Name AND [Product_No] = @original_Product_No" 
            InsertCommand="INSERT INTO [tbl_product_info] ([Product_No], [Product_Name]) VALUES (@Product_No, @Product_Name)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [tbl_product_info]" 
            UpdateCommand="UPDATE [tbl_product_info] SET [Product_No] = @Product_No WHERE [Product_Name] = @original_Product_Name AND [Product_No] = @original_Product_No">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_No" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_No" Type="String" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_No" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_No" Type="String" />
                <asp:Parameter Name="Product_Name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    
    
    
</asp:Content>

