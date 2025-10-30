<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="changepwd.aspx.vb" Inherits="changepwd" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <table style="height: 112px; width: 751px">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Old Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcurpwd" runat="server" Height="22px" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtcurpwd" ErrorMessage="RequiredFieldValidator">Please 
                        enter old password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="New Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtnpwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtnpwd" ErrorMessage="RequiredFieldValidator">Please 
                        enter new password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtcpwd" ErrorMessage="RequiredFieldValidator">Please 
                        Re-enter password</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtnpwd" ControlToValidate="txtcpwd" 
                            ErrorMessage="CompareValidator">Password must be match</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                            ID="btncpwd" runat="server" 
                            Text="Change Password" Font-Size="Small" class="btn2" Height="42px" 
                            Width="129px" Font-Bold="True" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            &nbsp; &nbsp;&nbsp;  <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button 
                ID="btncon" runat="server" class="btn2" Text="Continue" Font-Bold="False" 
                Font-Size="Large" />
            <br />
            <br />
            &nbsp;
        </asp:View>
    </asp:MultiView>
</asp:Content>

