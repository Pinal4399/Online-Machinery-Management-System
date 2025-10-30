<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="feed.aspx.vb" Inherits="feed" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="border: medium solid #2D89AC">
    <tr><td style="font-family: Arial, Helvetica, sans-serif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Feedback" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="#38A0C2" 
            Font-Underline="False"></asp:Label>
        &nbsp;</td>
        <td>
            &nbsp;&nbsp;
        </td>
        </tr>
    <tr>
        <td style="width: 1430px; font-family: 'times New Roman', Times, serif; font-size: large;">
            Tell us what you think about our web site, our products, our organization, or 
            anything else that comes to mind.<br />
            We welcome all of your comments and suggestions &nbsp; &nbsp; .<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.<br />
        </td>
    </tr>
    <tr>
        <td style="width: 1430px; font-family: 'Times New Roman', Times, serif; font-size: large;">
            What kind of comment would you like to send ?<br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="117px">
                <asp:ListItem>Complaint</asp:ListItem>
                <asp:ListItem>Problem</asp:ListItem>
                <asp:ListItem>Suggestion</asp:ListItem>
                <asp:ListItem>Praise</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="width: 1430px; font-family: 'times New Roman', Times, serif; font-size: large;">
            What&nbsp; about us do you want to comment on ?<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>Website</asp:ListItem>
                <asp:ListItem>Company</asp:ListItem>
                <asp:ListItem>Products</asp:ListItem>
                <asp:ListItem>Store</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 1430px; font-family: 'Times New Roman', Times, serif; font-size: large;">
            Enter your comments in the space provided below :<br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style16" 
            style="font-family: 'times New Roman', Times, serif; font-size: large">
            Tell us how to get in touch with you :<br />
            <br />
           <table>
                    <tr>
                        <td style="width: 100px">
                            Name :</td>
                        <td style="width: 100px">
                            &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            <asp:Panel ID="Panel1" runat="server" Height="124px" Visible="False" 
                Width="271px">
                <table style="height: 146px; width: 212px">
                    <tr>
                        <td class="style15">
                            E- mail :</td>
                        <td class="style17">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>

                </table>
            </asp:Panel>
        </td>
    </tr>
   
    <tr>
        <td style="width: 1430px; height: 22px">
            &nbsp;<table style="font-size: 100%">
                <tr>
                    <td style="width: 100px">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" 
                           class="btn2" Text="Submit Comments" Width="161px" Height="37px" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                            class="btn2" Text="Clear Form" Height="35px" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</asp:Content>

