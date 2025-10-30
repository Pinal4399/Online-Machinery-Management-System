<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="addemployee.aspx.vb" Inherits="addemployee" title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <table style="width: 787px" align="center"><tr><td class="style27" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Insert Branch Manager" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
            Font-Underline="False"></asp:Label>
        &nbsp;</td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label2" runat="server" Text="Employee Name" Font-Size="Small"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtenm" runat="server"></asp:TextBox>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtenm" ErrorMessage="RequiredFieldValidator">Please 
        enter name</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label3" runat="server" Text="Email Id"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
       
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txteid">Please enter proper email id</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txteid" ErrorMessage="please enter email id"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
			
				
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtadd" ErrorMessage="please enter address"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
				
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="please enter city"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label6" runat="server" Text="Qualification"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtqua" runat="server"></asp:TextBox>
				
			
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtqua" ErrorMessage="please enter qualification"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px; height: 28px;">
    <asp:Label ID="Label7" runat="server" Text="Experience"></asp:Label>
</td><td style="width: 379px; height: 28px;">
        <asp:TextBox ID="txtexp" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtexp" ErrorMessage="RequiredFieldValidator">Please 
        enter experience</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label8" runat="server" Text="Phone No"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtpno" runat="server"></asp:TextBox>
       
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="txtpno" ErrorMessage="CustomValidator">Length must be 10 
        digit</asp:CustomValidator>
				
					
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtpno" ErrorMessage="please enter contact no"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label9" runat="server" Text="Joining Date"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtjdate" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtjdate" ErrorMessage="RequiredFieldValidator">Please 
        enter joining date</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label10" runat="server" Text="Birth Date"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtbt" runat="server"></asp:TextBox>
				
			
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtbt" ErrorMessage="please enter birthdate"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style27" style="width: 95px">
    <asp:Label ID="Label11" runat="server" Text="Salary"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtsal" ErrorMessage="RequiredFieldValidator">Please 
        enter salary</asp:RequiredFieldValidator>
    </td></tr>

 
<tr><td class="style27" colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" Height="42px" Width="124px" />
    <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" Height="42px" Width="126px"
        
        />
    </td></tr>
</table>
</asp:Content>

