<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="tools_info.aspx.vb" Inherits="tools_info" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 702px">
    <tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label8" runat="server" Text="Insert Tool Information" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
        </td></tr>

<tr>
<td style="width: 332px">
    <asp:Label ID="Label2" runat="server" Text="Tools Name"></asp:Label>
</td><td style="width: 1232px">
        <asp:TextBox ID="txtnm" runat="server" style="margin-left: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtnm" ErrorMessage="RequiredFieldValidator">Please enter 
        tool name</asp:RequiredFieldValidator>
    </td>
    </tr>
<tr>
<td colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2"/>
    &nbsp;<asp:Button ID="btnre" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2"/>
</td></tr></table>
</asp:Content>

