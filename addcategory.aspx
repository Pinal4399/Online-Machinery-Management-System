<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="addcategory.aspx.vb" Inherits="addcategory" title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table>
    <tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Insert Category" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
            Font-Underline="False"></asp:Label>
        &nbsp;</td></tr>
    <tr><td class="style29" style="width: 173px; height: 19px;">
        </td><td class="style15" style="width: 631px; height: 19px;">
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
    </td></tr>
<tr><td class="style29" style="width: 173px">
    <asp:Label ID="Label2" runat="server" Text="Category Name" Font-Size="Large"></asp:Label>
</td><td class="style15" style="width: 631px">
<cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1">
        </cc1:ValidatorCalloutExtender>
        <asp:TextBox ID="txtcnm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtcnm" ErrorMessage="please enter category name">please 
        enter category name</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style29" style="width: 173px">
    <asp:Label ID="Label3" runat="server" Text="Description" Font-Size="Large"></asp:Label>
</td><td class="style15" style="width: 631px">
        <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
    </td></tr>
<tr><td class="style16" style="height: 34px;" colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnadd" 
        runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large"  Height="38px" Width="125px" class="btn2"/>
        &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnreset" runat="server" 
        Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" Height="38px" Width="125px"/>

</td></tr>


</table>
</asp:Content>

