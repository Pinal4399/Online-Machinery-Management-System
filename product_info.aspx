<%@ Page Language="VB" MasterPageFile="~/product.master" AutoEventWireup="false" CodeFile="product_info.aspx.vb" Inherits="pro" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
      
  

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        style="margin-right: 316px" Width="208px">
    <ItemTemplate>
        <b><span style="font-size: medium">Product Name</span></b>:
        <asp:Label ID="Product_NameLabel" runat="server" 
            Text='<%# Eval("Product_Name") %>' 
            style="font-weight: 700; color: #3399FF" />
        <br />
        <b><span style="font-size: medium">
        <br />
        Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b>:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' 
            style="color: #3399FF; font-weight: 700" />
        <br />
        <b><span style="font-size: medium">
        <br />
        Description</span></b>:
        <asp:Label ID="DescriptionLabel" runat="server" 
            Text='<%# Eval("Description") %>' />
        <br />
        &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("p_img") %>' 
            Height="200px" Width="200px"/>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:con1 %>" 
    
    SelectCommand="SELECT [Product_Name], [Price], [Description], [p_img] FROM [tbl_product] WHERE ([Product_No] = @Product_No)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Product_No" QueryStringField="pno" 
            Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    <table>
        <tr>
            <td style="width: 488px; ">


            </td>
        </tr>

    </table>
</asp:Content>

