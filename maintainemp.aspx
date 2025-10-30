<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="maintainemp.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
<tr><td style="width: 448px">&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" 
            Text="If you Add New Employee?"></asp:Label>
    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/insertemp.aspx" 
        Font-Size="Small">Click Here</asp:HyperLink>
    </td></tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="W_No" 
                DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="W_No" HeaderText="W_No" InsertVisible="False" 
                        ReadOnly="True" SortExpression="W_No" />
                    <asp:BoundField DataField="W_Name" HeaderText="W_Name" 
                        SortExpression="W_Name" />
                    <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" 
                        SortExpression="Email_Id" />
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
                DeleteCommand="DELETE FROM [tbl_worker] WHERE [W_No] = @original_W_No AND [W_Name] = @original_W_Name AND [Email_Id] = @original_Email_Id AND [Address] = @original_Address AND [City] = @original_City AND [Qualification] = @original_Qualification AND [Experience] = @original_Experience AND [Phone_No] = @original_Phone_No AND [Joining_Date] = @original_Joining_Date AND [Salary] = @original_Salary" 
                InsertCommand="INSERT INTO [tbl_worker] ([W_Name], [Email_Id], [Address], [City], [Qualification], [Experience], [Phone_No], [Joining_Date], [Salary]) VALUES (@W_Name, @Email_Id, @Address, @City, @Qualification, @Experience, @Phone_No, @Joining_Date, @Salary)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [W_No], [W_Name], [Email_Id], [Address], [City], [Qualification], [Experience], [Phone_No], [Joining_Date], [Salary] FROM [tbl_worker] WHERE ([Employee_No] = @Employee_No)" 
                UpdateCommand="UPDATE [tbl_worker] SET [W_Name] = @W_Name, [Email_Id] = @Email_Id, [Address] = @Address, [City] = @City, [Qualification] = @Qualification, [Experience] = @Experience, [Phone_No] = @Phone_No, [Joining_Date] = @Joining_Date, [Salary] = @Salary WHERE [W_No] = @original_W_No AND [W_Name] = @original_W_Name AND [Email_Id] = @original_Email_Id AND [Address] = @original_Address AND [City] = @original_City AND [Qualification] = @original_Qualification AND [Experience] = @original_Experience AND [Phone_No] = @original_Phone_No AND [Joining_Date] = @original_Joining_Date AND [Salary] = @original_Salary">
                <SelectParameters>
                    <asp:SessionParameter Name="Employee_No" SessionField="User_Id" Type="Int32" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="original_W_No" Type="Int32" />
                    <asp:Parameter Name="original_W_Name" Type="String" />
                    <asp:Parameter Name="original_Email_Id" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_Qualification" Type="String" />
                    <asp:Parameter Name="original_Experience" Type="String" />
                    <asp:Parameter Name="original_Phone_No" Type="Decimal" />
                    <asp:Parameter Type="DateTime" Name="original_Joining_Date" />
                    <asp:Parameter Name="original_Salary" Type="Decimal" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="W_Name" Type="String" />
                    <asp:Parameter Name="Email_Id" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Qualification" Type="String" />
                    <asp:Parameter Name="Experience" Type="String" />
                    <asp:Parameter Name="Phone_No" Type="Decimal" />
                    <asp:Parameter Type="DateTime" Name="Joining_Date" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="original_W_No" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="W_Name" Type="String" />
                    <asp:Parameter Name="Email_Id" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Qualification" Type="String" />
                    <asp:Parameter Name="Experience" Type="String" />
                    <asp:Parameter Name="Phone_No" Type="Decimal" />
                    <asp:Parameter Type="DateTime" Name="Joining_Date" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
        </td>
    </tr>
<tr><td style="width: 448px">
    &nbsp;</td></tr>
</table>
</asp:Content>

