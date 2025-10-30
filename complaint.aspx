<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="complaint.aspx.vb" Inherits="complaint" title="Untitled Page"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
    <table>
    <tr><td style="width: 433px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Task Assignment" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
            Font-Underline="False"></asp:Label>
        &nbsp;</td></tr></table>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        GridLines="None" Width="286px" Height="161px" ForeColor="#333333">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:Panel ID="Panel1" runat="server" Width="556px">
        <table style="width: 421px">
    <tr><td style="width: 465px">
        <asp:Label ID="Label1" runat="server" Text="Complaint No"></asp:Label>
        </td>
    <td style="width: 403px">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    
     <tr><td colspan="2">
         <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
             DataSourceID="SqlDataSource1" DataTextField="Tech_Name" 
             DataValueField="Tech_No">
         </asp:RadioButtonList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:con1 %>" 
             SelectCommand="SELECT [Tech_No], [Tech_Name] FROM [tbl_technician] WHERE ([Employee_No] = @Employee_No)">
             <SelectParameters>
                 <asp:SessionParameter Name="Employee_No" SessionField="User_Id" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         </td>
    </tr>
     <tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" Text="Task Assignment" class="btn2" />
         &nbsp;</td>
    </tr>
 
    </table>
    </asp:Panel>
    <br/>

    
   
    </asp:Content>

