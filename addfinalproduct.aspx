<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="addfinalproduct.aspx.vb" Inherits="addfinalproduct" title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="height: 362px; width: 566px">
<tr>
<td colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Insert Product" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
    &nbsp;</td></tr>
<tr>
<td style="width: 113px">
    <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
    </td><td style="width: 287px">
    <br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
             DataTextField="Product_Name" 
            DataValueField="Product_Name" AutoPostBack="True">
        </asp:DropDownList>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator">Please 
        enter product name</asp:RequiredFieldValidator>
    </td></tr>

<tr>
<td style="width: 113px">
    <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
    </td><td style="width: 287px">
        <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator4">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtqty" ErrorMessage="please enter quantity"></asp:RequiredFieldValidator>
    </td></tr>
<tr>
<td style="width: 113px">
    <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
    </td><td style="width: 287px">
        <asp:TextBox ID="txtpr" runat="server"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator2">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtpr" ErrorMessage="RequiredFieldValidator">Please enter 
        price</asp:RequiredFieldValidator>
    </td></tr>
<tr>
<td style="width: 113px">
    <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
    </td><td style="width: 287px">
        <asp:TextBox ID="txtdes" runat="server" TextMode="MultiLine"></asp:TextBox>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator3">
        </cc1:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtdes" ErrorMessage="RequiredFieldValidator">Please 
        enter description</asp:RequiredFieldValidator>
    </td></tr>
<tr>
<td style="width: 113px">
    <asp:Label ID="Label7" runat="server" Text="Product Image URL"></asp:Label>
    </td><td style="width: 287px">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Width="31px" />
       </td></tr>
<tr>
<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" Height="42px" Width="125px" />
    </td></tr>
</table>
</asp:Content>

