<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="maintainbranch.aspx.vb" Inherits="maintainbranch" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table><tr><td> &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" 
            Text="If you Add New Branch?"></asp:Label>
        <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/new_branch.aspx" 
            Font-Size="Small">Click Here</asp:HyperLink></td></tr>
   <tr><td>
 
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
           AutoGenerateColumns="False" DataKeyNames="Branch_No" 
           DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
           GridLines="None">
           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:BoundField DataField="Branch_No" HeaderText="Branch_No" 
                   InsertVisible="False" ReadOnly="True" SortExpression="Branch_No" />
               <asp:BoundField DataField="Branch_Name" HeaderText="Branch_Name" 
                   SortExpression="Branch_Name" />
               <asp:BoundField DataField="B_Address" HeaderText="B_Address" 
                   SortExpression="B_Address" />
               <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
               <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
               <asp:BoundField DataField="Cat_No" HeaderText="Cat_No" 
                   SortExpression="Cat_No" />
               <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" 
                   SortExpression="Contact_No" />
               <asp:BoundField DataField="Employee_No" HeaderText="Employee_No" 
                   SortExpression="Employee_No" />
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
           DeleteCommand="DELETE FROM [tbl_branch] WHERE [Branch_No] = @original_Branch_No AND [Branch_Name] = @original_Branch_Name AND [B_Address] = @original_B_Address AND [City] = @original_City AND [State] = @original_State AND [Cat_No] = @original_Cat_No AND [Contact_No] = @original_Contact_No AND [Employee_No] = @original_Employee_No" 
           InsertCommand="INSERT INTO [tbl_branch] ([Branch_Name], [B_Address], [City], [State], [Cat_No], [Contact_No], [Employee_No]) VALUES (@Branch_Name, @B_Address, @City, @State, @Cat_No, @Contact_No, @Employee_No)" 
           OldValuesParameterFormatString="original_{0}" 
           SelectCommand="SELECT * FROM [tbl_branch]" 
           UpdateCommand="UPDATE [tbl_branch] SET [Branch_Name] = @Branch_Name, [B_Address] = @B_Address, [City] = @City, [State] = @State, [Cat_No] = @Cat_No, [Contact_No] = @Contact_No, [Employee_No] = @Employee_No WHERE [Branch_No] = @original_Branch_No AND [Branch_Name] = @original_Branch_Name AND [B_Address] = @original_B_Address AND [City] = @original_City AND [State] = @original_State AND [Cat_No] = @original_Cat_No AND [Contact_No] = @original_Contact_No AND [Employee_No] = @original_Employee_No">
           <DeleteParameters>
               <asp:Parameter Name="original_Branch_No" Type="Int32" />
               <asp:Parameter Name="original_Branch_Name" Type="String" />
               <asp:Parameter Name="original_B_Address" Type="String" />
               <asp:Parameter Name="original_City" Type="String" />
               <asp:Parameter Name="original_State" Type="String" />
               <asp:Parameter Name="original_Cat_No" Type="Int32" />
               <asp:Parameter Name="original_Contact_No" Type="Decimal" />
               <asp:Parameter Name="original_Employee_No" Type="Int32" />
           </DeleteParameters>
           <UpdateParameters>
               <asp:Parameter Name="Branch_Name" Type="String" />
               <asp:Parameter Name="B_Address" Type="String" />
               <asp:Parameter Name="City" Type="String" />
               <asp:Parameter Name="State" Type="String" />
               <asp:Parameter Name="Cat_No" Type="Int32" />
               <asp:Parameter Name="Contact_No" Type="Decimal" />
               <asp:Parameter Name="Employee_No" Type="Int32" />
               <asp:Parameter Name="original_Branch_No" Type="Int32" />
               <asp:Parameter Name="original_Branch_Name" Type="String" />
               <asp:Parameter Name="original_B_Address" Type="String" />
               <asp:Parameter Name="original_City" Type="String" />
               <asp:Parameter Name="original_State" Type="String" />
               <asp:Parameter Name="original_Cat_No" Type="Int32" />
               <asp:Parameter Name="original_Contact_No" Type="Decimal" />
               <asp:Parameter Name="original_Employee_No" Type="Int32" />
           </UpdateParameters>
           <InsertParameters>
               <asp:Parameter Name="Branch_Name" Type="String" />
               <asp:Parameter Name="B_Address" Type="String" />
               <asp:Parameter Name="City" Type="String" />
               <asp:Parameter Name="State" Type="String" />
               <asp:Parameter Name="Cat_No" Type="Int32" />
               <asp:Parameter Name="Contact_No" Type="Decimal" />
               <asp:Parameter Name="Employee_No" Type="Int32" />
           </InsertParameters>
       </asp:SqlDataSource>
    </td></tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

