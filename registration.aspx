<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
            width: 286px;
        }
        .style2
        {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="border: medium solid #2D89AC; width: 1025px;">
     <tr><td colspan="2">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Registration" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
        Font-Underline="False"></asp:Label>
         </td></tr>

     <tr> 
<td class="style2">
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="UserName"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="txtunm" runat="server"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtunm" ErrorMessage="Please Enter User name"></asp:RequiredFieldValidator></td></tr>
        <tr>
<td class="style2">
<cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RegularExpressionValidator1">
        </cc1:ValidatorCalloutExtender>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Email Id"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="txtueid" runat="server"></asp:TextBox></td>
   
    <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
       ErrorMessage="You must Enter an Email Address" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txtueid" ></asp:RegularExpressionValidator>
             </td></tr> 
        <tr>
<td class="style2"> 
       
      <cc1:PasswordStrength ID="PasswordStrength1" runat="server" 
          TargetControlID="txtpwd" Enabled="True">
        </cc1:PasswordStrength>  
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Password"></asp:Label></td>
    <td class="style1">
         
        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
        <br />
       
            </td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtpwd" ErrorMessage="Please Enter password"></asp:RequiredFieldValidator>
        
            </td></tr>
        <tr>
<td class="style2">
 <cc1:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="txtcpwd">
        </cc1:PasswordStrength> 
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Confirm Password"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox></td>
    <td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Confirm Password must be same." ControlToCompare="txtpwd" 
            ControlToValidate="txtcpwd"></asp:CompareValidator>
            </td></tr>
           
        <tr>
<td class="style2">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Address"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Width="127px"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtadd" ErrorMessage="please enter address"></asp:RequiredFieldValidator>
            </td></tr>
     <tr>
<td class="style2">
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="City"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="Enter City Name"></asp:RequiredFieldValidator>
         </td></tr>
          <tr>
<td class="style2">
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Birth Date"></asp:Label></td>
    <td class="style1">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Jan</asp:ListItem>
            <asp:ListItem>Feb</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>July</asp:ListItem>
            <asp:ListItem>Aug</asp:ListItem>
            <asp:ListItem>Sept</asp:ListItem>
            <asp:ListItem>Oct</asp:ListItem>
            <asp:ListItem>Nov</asp:ListItem>
            <asp:ListItem>Dec</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
            <asp:ListItem>1960</asp:ListItem>
            <asp:ListItem>1961</asp:ListItem>
            <asp:ListItem>1962</asp:ListItem>
            <asp:ListItem>1963</asp:ListItem>
            <asp:ListItem>1964</asp:ListItem>
            <asp:ListItem>1965</asp:ListItem>
            <asp:ListItem>1966</asp:ListItem>
            <asp:ListItem>1967</asp:ListItem>
            <asp:ListItem>1968</asp:ListItem>
            <asp:ListItem>1969</asp:ListItem>
            <asp:ListItem>1970</asp:ListItem>
            <asp:ListItem>1971</asp:ListItem>
            <asp:ListItem>1972</asp:ListItem>
            <asp:ListItem>1973</asp:ListItem>
            <asp:ListItem>1974</asp:ListItem>
            <asp:ListItem>1975</asp:ListItem>
            <asp:ListItem>1976</asp:ListItem>
            <asp:ListItem>1977</asp:ListItem>
            <asp:ListItem>1978</asp:ListItem>
            <asp:ListItem>1979</asp:ListItem>
            <asp:ListItem>1980</asp:ListItem>
            <asp:ListItem>1981</asp:ListItem>
            <asp:ListItem>1982</asp:ListItem>
            <asp:ListItem>1983</asp:ListItem>
            <asp:ListItem>1984</asp:ListItem>
            <asp:ListItem>1985</asp:ListItem>
            <asp:ListItem>1986</asp:ListItem>
            <asp:ListItem>1987</asp:ListItem>
            <asp:ListItem>1988</asp:ListItem>
            <asp:ListItem>1989</asp:ListItem>
            <asp:ListItem>1990</asp:ListItem>
        </asp:DropDownList>
              </td>
    <td>&nbsp;</td></tr>
     <tr>
<td class="style2">
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Phone No"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="txtpno" runat="server"></asp:TextBox></td>
    <td>
       
         <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="txtpno" ErrorMessage="Length must be 10 character"></asp:CustomValidator>
         </td></tr>
        
            
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                <asp:Button ID="Button1" runat="server" Text="Register Me" Font-Bold="True" 
        Font-Size="Large" class="btn2" 
                    style="margin-left: 0px"/>
                 &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Font-Bold="True" 
        Font-Size="Large" class="btn2"/>
            </td>
        </tr>
        <tr>
      
        <td class="style2">
            &nbsp;</td>
          </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
            </td>
        </tr>
        </table>
       
       
    
    &nbsp;        
</asp:Content>

