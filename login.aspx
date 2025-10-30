<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" title="Untitled Page" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
 <asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">

  <style type="text/css">
           .modalPopup    
           {     
               background-color: white;
           	  border-width: 2px;     
           	   border-style: solid;     
           	    border-color: #000;    
           	      padding: 8px;    
           	        width: 300px;    
           	          text-align: center;
           }
        .newStyle1
        {
            text-align: center;
        }
        .newStyle2
        {
            text-align: center;
        }
        .style17
        {
            height: 42px;
        }

.ModalPopupBG
{
    background-color: #666699;

      border-width: 2px;     
 border-style: solid;    
   border-color: #000;    
     padding: 8px;     
      width: 300px;      
      text-align: center;
}      
    </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
 
<div>
    <table style="width: 700px; margin-left: 164px; height: 403px;">
    <tr><td colspan="2" style="text-decoration: blink">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" CssClass="newStyle2" Font-Bold="True" 
            Font-Size="Large" ForeColor="#006699" Text="Login to CNCsite Account"></asp:Label>
        </td></tr>
        <tr><td class="style17">
        <asp:Label ID="Label3" runat="server" Text="User Type" Font-Size="Large"></asp:Label>
</td>
        <td class="style17">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" 
                AutoPostBack="True" Height="34px" Font-Size="Large">
                <asp:ListItem>Owner</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Branch Manager</asp:ListItem>
                <asp:ListItem>Technician</asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
            </asp:DropDownList>
           </td>
   </tr>
   <tr><td>
   <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RegularExpressionValidator1">
        </cc1:ValidatorCalloutExtender>
        <asp:Label ID="Label4" runat="server" Text="Email_Id" Font-Size="Large"></asp:Label>      
</td>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="231px" 
                Font-Size="Large" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="You must Enter an Email Address" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="TextBox1">*</asp:RegularExpressionValidator>
       </td>
   </tr>
    <tr><td>
    <cc1:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtpwd">
        </cc1:PasswordStrength>  
        <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="Large"></asp:Label>       
</td>
        <td><asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Font-Size="Large"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpwd">Please 
            enter password</asp:RequiredFieldValidator>
        </td>
   </tr>
      <tr><td>  
          &nbsp;</td></tr> 
   <tr>
        <td colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="btnlogin" runat="server" Text="Login" Font-Bold="True" 
        Font-Size="X-Large" class="btn2" />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Forgot your Pasword?"></asp:Label>
        
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/forgotpwd.aspx">Click 
            here</asp:HyperLink>
        
            <br />
      
        </td></tr>
       </table>
       </div>
      
       </asp:Content>

