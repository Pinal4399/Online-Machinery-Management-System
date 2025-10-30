<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="insertemp.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table><tr><td colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Text="Insert Employee" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
        &nbsp;</td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label2" runat="server" Text="Employee Name"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txtenm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="txtenm">Please 
            enter Employee Name</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txteid" ErrorMessage="RegularExpressionValidator" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please 
            enter proper Emailid</asp:RegularExpressionValidator>
        </td></tr>
    <tr><td style="width: 132px; height: 19px;">
        <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
        </td><td style="width: 562px; height: 19px;">
            <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtadd" ErrorMessage="please enter address"></asp:RequiredFieldValidator>
        </td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="RequiredFieldValidator">Please 
            enter City name</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label7" runat="server" Text="Qualification"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txtqua" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtqua" ErrorMessage="RequiredFieldValidator">Please 
            enter Qualification</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label8" runat="server" Text="Experience"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txtexp" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtexp" ErrorMessage="RequiredFieldValidator">Please 
            enter experience</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label9" runat="server" Text="Phone No"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txtpno" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ControlToValidate="txtpno" ErrorMessage="CustomValidator">Length must be 10 
            digit</asp:CustomValidator>
        </td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label10" runat="server" Text="Joining Date"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txtjdt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtjdt" ErrorMessage="RequiredFieldValidator">Please 
            enter joining date</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td style="width: 132px; height: 24px;">
        <asp:Label ID="Label11" runat="server" Text="Birth Date"></asp:Label>
        </td><td style="width: 562px; height: 24px;">
            <asp:TextBox ID="txtbd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtbd" ErrorMessage="please enter birthdate"></asp:RequiredFieldValidator>
        </td></tr>
    <tr><td style="width: 132px">
        <asp:Label ID="Label12" runat="server" Text="Salary"></asp:Label>
        </td><td style="width: 562px">
            <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtsal" ErrorMessage="RequiredFieldValidator">Please 
            enter salary</asp:RequiredFieldValidator>
        </td></tr>
   
        <tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" />
            &nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" />
                &nbsp;</td></tr>
                 </table>
                
   
</asp:Content>

