<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="new_branch.aspx.vb" Inherits="new_branch" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 852px">
<tr><td class="style18" colspan="2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text="Insert New Branch" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
    &nbsp;</td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label2" runat="server" Text="Branch Name"></asp:Label>
</td><td>
        <asp:TextBox ID="txtbnm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="txtbnm">Please 
        enter branch name</asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
</td><td>
        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Please enter address" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label4" runat="server" Text="Email_Id"></asp:Label>
</td><td>
        <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Please enter valid  emailid" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txteid"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txteid" ErrorMessage="please enter emailid"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
</td><td>
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Please enter city" ControlToValidate="txtcity"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
</td><td>
        <asp:TextBox ID="txtst" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Please enter state" ControlToValidate="txtst"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label7" runat="server" Text="Category Name"></asp:Label>
</td><td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:con1 %>" 
            SelectCommand="SELECT [Cat_No], [Cat_Name] FROM [tbl_cat]">
        </asp:SqlDataSource>
        <asp:DropDownList ID="ddlcnm" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Cat_Name" 
            DataValueField="Cat_No" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Please select category name" ControlToValidate="ddlcnm"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label8" runat="server" Text="Contact No"></asp:Label>
</td><td>
        <asp:TextBox ID="txtcont" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="length must be 10  digit" ControlToValidate="txtcont"></asp:CustomValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtcont" ErrorMessage="please enter contact no"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td class="style18" style="width: 139px">
    <asp:Label ID="Label9" runat="server" Text="Employee Name"></asp:Label>
</td><td>
        <asp:DropDownList ID="ddleno" runat="server" 
            DataSourceID="SqlDataSource2" AutoPostBack="True" 
            DataTextField="E_Name" DataValueField="Employee_No">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:con1 %>" 
            
            
            SelectCommand="SELECT [Employee_No], [E_Name] FROM [tbl_employee] WHERE ([Emp_Type_No] = @Emp_Type_No)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="3" Name="Emp_Type_No" 
                    QueryStringField="Emp_Type_No" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Please select employeeno" ControlToValidate="ddleno"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="X-Large" class="btn2"/>
        &nbsp;<asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="X-Large" class="btn2"/>
        </td></tr>
</table>
</asp:Content>

