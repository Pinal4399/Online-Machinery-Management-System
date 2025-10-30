<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="finalproduct.aspx.vb" Inherits="finalproduct" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    <br />
    <asp:Label ID="Label1" runat="server" 
            Text="If you Add New Product?"></asp:Label>
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/addfinalproduct.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink>
  
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="Product_No" 
            DataSourceID="SqlDataSource1" CellPadding="4" 
            GridLines="None" Width="984px" ForeColor="#333333">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Product_No" HeaderText="Product_No" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Product_No" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                    SortExpression="Product_Name" ReadOnly="True" />
               <asp:TemplateField HeaderText="Qty" SortExpression="Qty">
            <EditItemTemplate> 
            <asp:TextBox ID="t1" runat="server" Text='<%# Eval("Qty") %>'></asp:TextBox>
            </EditItemTemplate> 
            
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                 </ItemTemplate>
            
            </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" 
                    ReadOnly="True" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" ReadOnly="True" />
                <asp:ImageField DataImageUrlField="p_img" HeaderText="Product Image"
                    ReadOnly="True">
                    <ItemStyle Height="150px" Width="150px" />
                </asp:ImageField>
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
            DeleteCommand="DELETE FROM [tbl_product] WHERE [Product_No] = @original_Product_No AND [Product_Name] = @original_Product_Name AND (([Qty] = @original_Qty) OR ([Qty] IS NULL AND @original_Qty IS NULL)) AND [Price] = @original_Price AND [Description] = @original_Description AND (([p_img] = @original_p_img) OR ([p_img] IS NULL AND @original_p_img IS NULL))" 
            InsertCommand="INSERT INTO [tbl_product] ([Product_Name], [Qty], [Price], [Description], [p_img]) VALUES (@Product_Name, @Qty, @Price, @Description, @p_img)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [Product_No], [Product_Name], [Qty], [Price], [Description], [p_img] FROM [tbl_product] WHERE ([Cat_No] = @Cat_No)" 
            UpdateCommand="UPDATE [tbl_product] SET [Product_Name] = @Product_Name, [Qty] = @Qty, [Price] = @Price, [Description] = @Description, [p_img] = @p_img WHERE [Product_No] = @original_Product_No AND [Product_Name] = @original_Product_Name AND (([Qty] = @original_Qty) OR ([Qty] IS NULL AND @original_Qty IS NULL)) AND [Price] = @original_Price AND [Description] = @original_Description AND (([p_img] = @original_p_img) OR ([p_img] IS NULL AND @original_p_img IS NULL))">
            <SelectParameters>
                <asp:SessionParameter Name="Cat_No" SessionField="cat_no" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_Product_No" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Qty" Type="Decimal" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_p_img" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Qty" Type="Decimal" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="p_img" Type="String" />
                <asp:Parameter Name="original_Product_No" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Qty" Type="Decimal" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_p_img" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Qty" Type="Decimal" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="p_img" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
</asp:Content>

