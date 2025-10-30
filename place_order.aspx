<%@ Page Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="place_order.aspx.vb" Inherits="place_order" title="Untitled Page" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Serial_No" DataSourceID="SqlDataSource1" CellPadding="4" 
        GridLines="None" ForeColor="#333333">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Serial_No" HeaderText="Serial_No" 
                InsertVisible="False" ReadOnly="True" SortExpression="Serial_No" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                ReadOnly="True" SortExpression="Product_Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" 
                SortExpression="Price" />
        
            <asp:TemplateField HeaderText="Qty" SortExpression="Qty">
            <EditItemTemplate> 
            <asp:TextBox ID="t1" runat="server" Text='<%# Eval("Qty") %>'></asp:TextBox>
            </EditItemTemplate> 
            
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                 </ItemTemplate>
            
            </asp:TemplateField>
            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" ReadOnly="True" 
                SortExpression="SubTotal" />
            <asp:ImageField DataImageUrlField="Product_Image" HeaderText="Product Image">
                <ItemStyle Height="150px" Width="150px" />
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:con1 %>" 
        DeleteCommand="DELETE FROM [tbl_cart] WHERE [Serial_No] = @original_Serial_No " 
        InsertCommand="INSERT INTO [tbl_cart] ([Product_Name], [Price], [Qty], [SubTotal], [Product_Image]) VALUES (@Product_Name, @Price, @Qty, @SubTotal, @Product_Image)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Serial_No], [Product_Name], [Price], [Qty], [SubTotal], [Product_Image] FROM [tbl_cart]" 
        UpdateCommand="UPDATE [tbl_cart] SET  [Qty] = @Qty WHERE [Serial_No] = @original_Serial_No  AND  (([Qty] = @original_Qty) OR ([Qty] IS NULL AND @original_Qty IS NULL)) ">
        <SelectParameters>
            <asp:SessionParameter Name="Product_No" SessionField="product" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_Serial_No" Type="Int32" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Qty" Type="Decimal" />
            <asp:Parameter Name="original_SubTotal" Type="Decimal" />
            <asp:Parameter Name="original_Product_Image" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
         
        
            <asp:Parameter Name="Qty" Type="Decimal" />
          
            <asp:Parameter Name="original_Serial_No" Type="Int32" />
             <asp:Parameter Name="original_Qty" Type="Decimal" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Qty" Type="Decimal" />
            <asp:Parameter Name="SubTotal" Type="Decimal" />
            <asp:Parameter Name="Product_Image" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br/>
     <asp:Button ID="Button1" runat="server" Text="Add more Product" class="btn2" 
         />   
        <asp:Button ID="Button2" runat="server" Text="Do my Bill" class="btn2" 
         />
</asp:Content>

