<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="maintaincategory.aspx.vb" Inherits="maintaincategory" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" 
            Text="If you Add New Category?"></asp:Label>
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/addcategory.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Cat_No" 
    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
    GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Cat_No" HeaderText="Cat_No" ReadOnly="True" 
                SortExpression="Cat_No" />
            <asp:BoundField DataField="Cat_Name" HeaderText="Cat_Name" 
                SortExpression="Cat_Name" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:con1 %>" 
        DeleteCommand="DELETE FROM [tbl_cat] WHERE [Cat_No] = @original_Cat_No AND [Cat_Name] = @original_Cat_Name" 
        InsertCommand="INSERT INTO [tbl_cat] ([Cat_No], [Cat_Name]) VALUES (@Cat_No, @Cat_Name)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Cat_No], [Cat_Name] FROM [tbl_cat]" 
        UpdateCommand="UPDATE [tbl_cat] SET [Cat_Name] = @Cat_Name WHERE [Cat_No] = @original_Cat_No AND [Cat_Name] = @original_Cat_Name">
        <DeleteParameters>
            <asp:Parameter Name="original_Cat_No" Type="Int32" />
            <asp:Parameter Name="original_Cat_Name" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cat_Name" Type="String" />
            <asp:Parameter Name="original_Cat_No" Type="Int32" />
            <asp:Parameter Name="original_Cat_Name" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Cat_No" Type="Int32" />
            <asp:Parameter Name="Cat_Name" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

