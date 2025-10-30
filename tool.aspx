<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false"
    CodeFile="tool.aspx.vb" Inherits="tool" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <br />
    <table style="width: 604px">
     <tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Insert Tool" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
         &nbsp;</td></tr>
        <tr>
            <td style="width: 334px">
                <asp:Label ID="Label1" runat="server" Text="Tools Name"></asp:Label>
            </td>
            <td style="width: 1027px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                    DataTextField="Tools_Name" DataValueField="Tools_Name">
                   
                </asp:DropDownList>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="please select tools"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td style="width: 334px">
                <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td style="width: 1027px">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
  
        <tr>
            <td style="width: 334px">
                <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
            </td>
            <td style="width: 1027px">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" Font-Size="X-Large"
                    class="btn2" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
