<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="mail1.aspx.vb" Inherits="mail1" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 323px">
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Advertisement Mail" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
        &nbsp;</td></tr></table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Mail_No" 
    DataSourceID="SqlDataSource1" GridLines="None" ForeColor="#333333">
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
        <asp:BoundField DataField="Mail_No" HeaderText="Mail_No" InsertVisible="False" 
            ReadOnly="True" SortExpression="Mail_No" />
        <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" 
            SortExpression="Email_Id" />
   
        <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
            SortExpression="Product_Name" />
    </Columns>
    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:con1 %>" 
    SelectCommand="SELECT * FROM [tbl_mail]"></asp:SqlDataSource>
    <table>
    <tr><td></td></tr>
    <tr>
        <td style="width: 477px; height: 32px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><asp:Button 
                ID="Button1" runat="server" Text="Advertisement " Font-Bold="True" 
        Font-Size="X-Large" class="btn1" Width="180px" Height="52px"/>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        
    </tr>
</table>
</asp:Content>

