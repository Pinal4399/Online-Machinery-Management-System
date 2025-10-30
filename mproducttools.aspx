<%@ Page Language="VB" MasterPageFile="~/branch_manager.master" AutoEventWireup="false" CodeFile="mproducttools.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
    <tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Making Product" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
        &nbsp;</td></tr>
        <tr>
            <td class="style16" style="width: 164px">
                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td class="style15" style="width: 770px">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Product_Name" 
                    DataValueField="Product_Name" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con1 %>" 
                    
                    SelectCommand="SELECT [Product_Name] FROM [tbl_product_info] WHERE ([Cat_No] = @Cat_No)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Cat_No" SessionField="cat_no" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator">Please 
                select product name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16" style="width: 164px; height: 81px;">
                <asp:Label ID="Label2" runat="server" Text="Tools Name"></asp:Label>
            </td>
            <td class="style15" style="width: 770px; height: 81px;">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Tools_Name" 
                    DataValueField="Tools_Name">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con1 %>" 
                    
                    SelectCommand="SELECT [Tools_Name] FROM [tbl_supplier_order] WHERE ([Employee_No] = @Employee_No)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Employee_No" SessionField="User_Id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        
        <tr>
            <td class="style16" colspan="2"> &nbsp;&nbsp; &nbsp;<asp:Button 
                    ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2"/> &nbsp; &nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2"/>
            </td>
        </tr>
    </table>
</asp:Content>

