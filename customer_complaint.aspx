<%@ Page Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="customer_complaint.aspx.vb" Inherits="customer_complaint" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table>
<tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Complaint" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
    &nbsp;</td></tr>
<tr><td style="width: 651px">
   <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
   
   </td><td style="width: 708px">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="subject must be compulsory"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td><asp:Label ID="Label3" runat="server" Text="Product Name"></asp:Label></td><td>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Product_Name" 
            DataValueField="Product_Name" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:con1 %>" 
            
            SelectCommand="SELECT [Product_Name] FROM [tbl_order] WHERE ([User_Id] = @User_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="User_Id" SessionField="User_Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </td></tr>
   <tr><td style="width: 651px">
       <asp:Label ID="Label2" runat="server" Text="Remarks"></asp:Label>
       </td><td style="width: 708px">
           <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ControlToValidate="TextBox2" ErrorMessage="please write your complaint"></asp:RequiredFieldValidator>
       </td></tr>
       <tr><td colspan="2">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button1" runat="server" Text="Submit" class="btn2"/>
          
           </td></tr>
</table>
</asp:Content>

