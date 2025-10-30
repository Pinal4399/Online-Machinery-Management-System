<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="order_tools.aspx.vb" Inherits="order__tools" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 834px">
<tr><td colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Order Tools" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
    &nbsp;</td></tr>
<tr><td style="width: 107px">
    </td><td style="width: 615px">
        </td></tr>
<tr><td style="width: 107px; height: 3px;">
    <asp:Label ID="Label3" runat="server" Text="Supplier Name"></asp:Label>
</td><td style="width: 615px; height: 3px;">
        <asp:DropDownList ID="ddlsno" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="S_Name" 
            DataValueField="Supplier_No" Width="124px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:con1 %>" 
            
            
            SelectCommand="SELECT [S_Name], [Supplier_No] FROM [tbl_Supplier] WHERE ([Employee_No] = @Employee_No)">
            <SelectParameters>
                <asp:SessionParameter Name="Employee_No" SessionField="User_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="ddlsno" ErrorMessage="RequiredFieldValidator">Please 
        select supplier number</asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="width: 107px">
    <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
</td><td style="width: 615px">
        <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtqty" ErrorMessage="RequiredFieldValidator">Please 
        enter quantity</asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="width: 107px">
    <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
</td><td style="width: 615px">
        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtprice" ErrorMessage="RequiredFieldValidator">Please 
        enter price</asp:RequiredFieldValidator>
    </td></tr>
    <tr><td style="width: 107px">
    <asp:Label ID="Label6" runat="server" Text="Tools name"></asp:Label>
</td><td style="width: 615px">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="Tools_Name" 
                DataValueField="Tools_Name" Width="127px" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:con1 %>" 
                SelectCommand="SELECT [Tools_Name] FROM [tbl_tool_info]">
            </asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator">Please 
            enter select tools name</asp:RequiredFieldValidator>
    </td></tr>

    <tr><td colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button2" runat="server" CssClass="btn2" Font-Bold="True" Font-Size="Large" 
            Text="Add" />
        &nbsp;&nbsp;<asp:Button ID="btnadd" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="Large" class="btn2"/>
        </td>
        </tr>
</table>
</asp:Content>

