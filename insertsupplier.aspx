<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="insertsupplier.aspx.vb" Inherits="supplier" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 834px">
<tr><td colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Insert Supplier" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
    &nbsp;</td></tr>
<tr><td style="width: 96px">
    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
</td><td style="width: 615px">
        <asp:TextBox ID="txtsnm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtsnm" ErrorMessage="RequiredFieldValidator">Please 
        enter Supplier name</asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="width: 96px; height: 3px;">
    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
</td><td style="width: 615px; height: 3px;">
        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtadd" ErrorMessage="please enter address"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="width: 96px">
    <asp:Label ID="Label4" runat="server" Text="Contact No"></asp:Label>
</td><td style="width: 615px">
        <asp:TextBox ID="txtcno" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="txtcno" ErrorMessage="length must be 10 character"></asp:CustomValidator>
    </td></tr>
<tr><td style="width: 96px">
    <asp:Label ID="Label5" runat="server" Text="Email_Id"></asp:Label>
</td><td style="width: 615px">
        <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Please Enter Valid Email Id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txteid"></asp:RegularExpressionValidator>
    </td></tr>
<tr><td style="width: 96px">
    <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
</td><td style="width: 615px">
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
				
				
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="please enter city"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="width: 96px">
    <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
</td><td style="width: 615px">
        <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
				
				
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtstate" ErrorMessage="please enter state"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" />
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" />
        </td>
        </tr>
</table>
</asp:Content>

