<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="maintainbranchmanager.aspx.vb" Inherits="maintainbranchmanager" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
<tr><td>&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" 
            Text="If you Add New Branch Manager?"></asp:Label>
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/addemployee.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink></td>
        </tr>
<tr>
<td class="style25" style="width: 732px">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Employee_No" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Employee_No" HeaderText="Employee_No" 
                InsertVisible="False" ReadOnly="True" SortExpression="Employee_No" />
            <asp:BoundField DataField="E_Name" HeaderText="E_Name" 
                SortExpression="E_Name" />
            <asp:BoundField DataField="E_Email_Id" HeaderText="E_Email_Id" 
                SortExpression="E_Email_Id" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                SortExpression="Qualification" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" 
                SortExpression="Experience" />
            <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" 
                SortExpression="Phone_No" />
            <asp:BoundField DataField="Joining_Date" HeaderText="Joining_Date" 
                SortExpression="Joining_Date" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" 
                SortExpression="Salary" />
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
        DeleteCommand="DELETE FROM [tbl_employee] WHERE [Employee_No] = @original_Employee_No AND [E_Name] = @original_E_Name AND [E_Email_Id] = @original_E_Email_Id AND [Address] = @original_Address AND [City] = @original_City AND [Qualification] = @original_Qualification AND [Experience] = @original_Experience AND [Phone_No] = @original_Phone_No AND [Joining_Date] = @original_Joining_Date AND [Salary] = @original_Salary" 
        InsertCommand="INSERT INTO [tbl_employee] ([E_Name], [E_Email_Id], [Address], [City], [Qualification], [Experience], [Phone_No], [Joining_Date], [Salary]) VALUES (@E_Name, @E_Email_Id, @Address, @City, @Qualification, @Experience, @Phone_No, @Joining_Date, @Salary)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Employee_No], [E_Name], [E_Email_Id], [Address], [City], [Qualification], [Experience], [Phone_No], [Joining_Date], [Salary] FROM [tbl_employee] WHERE ([Emp_Type_No] = @Emp_Type_No)" 
        UpdateCommand="UPDATE [tbl_employee] SET [E_Name] = @E_Name, [E_Email_Id] = @E_Email_Id, [Address] = @Address, [City] = @City, [Qualification] = @Qualification, [Experience] = @Experience, [Phone_No] = @Phone_No, [Joining_Date] = @Joining_Date, [Salary] = @Salary WHERE [Employee_No] = @original_Employee_No AND [E_Name] = @original_E_Name AND [E_Email_Id] = @original_E_Email_Id AND [Address] = @original_Address AND [City] = @original_City AND [Qualification] = @original_Qualification AND [Experience] = @original_Experience AND [Phone_No] = @original_Phone_No AND [Joining_Date] = @original_Joining_Date AND [Salary] = @original_Salary">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="3" Name="Emp_Type_No" 
                QueryStringField="Emp_Type_No" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_Employee_No" Type="Int32" />
            <asp:Parameter Name="original_E_Name" Type="String" />
            <asp:Parameter Name="original_E_Email_Id" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Qualification" Type="String" />
            <asp:Parameter Name="original_Experience" Type="String" />
            <asp:Parameter Name="original_Phone_No" Type="Decimal" />
            <asp:Parameter Type="DateTime" Name="original_Joining_Date" />
            <asp:Parameter Name="original_Salary" Type="Decimal" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="E_Name" Type="String" />
            <asp:Parameter Name="E_Email_Id" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="Experience" Type="String" />
            <asp:Parameter Name="Phone_No" Type="Decimal" />
            <asp:Parameter Type="DateTime" Name="Joining_Date" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="original_Employee_No" Type="Int32" />
           
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="E_Name" Type="String" />
            <asp:Parameter Name="E_Email_Id" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="Experience" Type="String" />
            <asp:Parameter Name="Phone_No" Type="Decimal" />
            <asp:Parameter Type="DateTime" Name="Joining_Date" />
            <asp:Parameter Name="Salary" Type="Decimal" />
        </InsertParameters>
    </asp:SqlDataSource>
    </td></tr></table>
</asp:Content>

