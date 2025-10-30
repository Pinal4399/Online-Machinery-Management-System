<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="addtechnician.aspx.vb" Inherits="addemployee" title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <table style="width: 787px"><tr><td class="style27" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Insert Technician" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
            Font-Underline="False"></asp:Label>
        &nbsp;</td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label2" runat="server" Text="Employee Name"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtenm" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtenm" ErrorMessage="Please 
        enter employee name">Please 
        enter employee name*</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label3" runat="server" Text="Email Id"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RegularExpressionValidator1">
        </cc1:ValidatorCalloutExtender>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txteid">please enter proper email id</asp:RegularExpressionValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator5">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtadd" ErrorMessage="please enter address"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
				
		<cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator6">
        </cc1:ValidatorCalloutExtender>	
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="please enter city"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label6" runat="server" Text="Qualification"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtqua" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RequiredFieldValidator2">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtqua" ErrorMessage="RequiredFieldValidator">Please 
        enter qualification</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label7" runat="server" Text="Experience"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtexp" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator3">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtexp" ErrorMessage="RequiredFieldValidator">Please 
        enter experience</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label8" runat="server" Text="Phone No"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtpno" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="CustomValidator1">
        </cc1:ValidatorCalloutExtender>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="txtpno" ErrorMessage="CustomValidator">Length must be 10 
        digit</asp:CustomValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label9" runat="server" Text="Joining Date"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtjdate" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" TargetControlID="RequiredFieldValidator4">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtjdate" ErrorMessage="RequiredFieldValidator">Please 
        enter joining date</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label10" runat="server" Text="Birth Date"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtbt" runat="server"></asp:TextBox>
				
		<cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" TargetControlID="RequiredFieldValidator7">
        </cc1:ValidatorCalloutExtender>		
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtsal" ErrorMessage="please enter birthdate"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style12" style="width: 89px">
    <asp:Label ID="Label11" runat="server" Text="Salary"></asp:Label>
</td><td style="width: 379px">
        <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
				
		<cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" runat="server" TargetControlID="RequiredFieldValidator8">
        </cc1:ValidatorCalloutExtender>		
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtsal" ErrorMessage="please enter salary"></asp:RequiredFieldValidator>
    </td></tr>

<tr><td class="style27" colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" Height="41px" Width="123px" />
    &nbsp;<asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" Height="42px" Width="125px" />
    </td></tr>
</table>
</asp:Content>

