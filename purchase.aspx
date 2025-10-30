<%@ Page Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="purchase.aspx.vb" Inherits="purchase" title="Untitled Page" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        
            
            
                 
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="#0000CC" Text="Select Product"></asp:Label>
        
                     <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
             DataTextField="Product_Name" DataSourceID="SqlDataSource1"
            DataValueField="Product_No">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:con1 %>" 
            SelectCommand="SELECT [Product_No], [Product_Name] FROM [tbl_product]">
        </asp:SqlDataSource>
      <%--  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:con1 %>" 
            SelectCommand="SELECT [Product_No], [Product_Name] FROM [tbl_product] WHERE ([Cat_No] = @Cat_No)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" 
                    Name="Cat_No" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>--%>
        
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
    <asp:DataList ID="DataList1" runat="server" datasourceid="SqlDataSource3">
                     <ItemTemplate>
                         Product Name<asp:Label ID="Product_NameLabel" runat="server" 
                             Text='<%# Eval("Product_Name") %>' 
                             style="font-size: medium; font-weight: 700; font-family: Tahoma"></asp:Label>
                         <br />
                         <br />
                         <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("p_img") %>' 
                             Height="200px" Width="200px" />
                         <br />
                         Description<asp:Literal ID="Literal1" runat="server" 
                             Text='<%# Eval("Description") %>'></asp:Literal>
                         <br />
                         Price
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'  style="font-size: medium; font-weight: 700; font-family: Tahoma"></asp:Label>
                     </ItemTemplate>
                 </asp:DataList>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:con1 %>" 
                     SelectCommand="SELECT Product_Name, Price, Description, p_img FROM tbl_product WHERE (Product_No = @Product_No)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="DropDownList1"  
                             Name="Product_No" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
              
                 <asp:Button ID="btnclick" runat="server" Text="Place Order" Font-Bold="True" Font-Size="Medium" 
                    class="btn2" />
   
  
</asp:Content>

