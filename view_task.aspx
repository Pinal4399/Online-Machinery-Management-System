<%@ Page Language="VB" MasterPageFile="~/technician.master" AutoEventWireup="false" CodeFile="view_task.aspx.vb" Inherits="view_task" title="Untitled Page" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
<tr><td style="width: 269px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="View Complaint" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
    &nbsp;</td></tr>
</table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Serial_No" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
           
            <asp:BoundField DataField="Complaint_No" HeaderText="Complaint_No" 
                SortExpression="Complaint_No" />
            <asp:BoundField DataField="Task_Assign_Date" HeaderText="Task_Assign_Date" 
                SortExpression="Task_Assign_Date" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:con1 %>" 
        SelectCommand="SELECT [Serial_No], [Complaint_No], [Task_Assign_Date] FROM [tbl_task1] WHERE ([Employee_No] = @Employee_No)">
        <SelectParameters>
            <asp:SessionParameter Name="Employee_No" SessionField="User_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
 <asp:Panel ID="Panel1" runat="server" Width="556px">
        <table style="width: 421px">
    <tr><td style="width: 353px">
        <asp:Label ID="Label1" runat="server" Text="Complaint No"></asp:Label>
        </td>
    <td style="width: 403px">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    
     <tr><td style="width: 353px" >
         <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>
         </td><td>
             <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                 GroupName="abc" Text="Pending" />
             <asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" 
                 Text="Completed" />
         </td>
    </tr>
     <tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" Text="Submit" class="btn2" />
         &nbsp;</td>
    </tr>
 
    </table>
    </asp:Panel>
</asp:Content>

