<%@ Page Language="VB" MasterPageFile="~/home.master" AutoEventWireup="false" CodeFile="service.aspx.vb" Inherits="service" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 975px; height: 191px"><tr><td class="style12" colspan="2">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/services.png" 
            Height="89px" Width="201px" />
        </td></tr>
        <tr><td class="style17">
            <asp:HyperLink ID="HyperLink10" runat="server" 
                NavigateUrl="~/industrialautomation.aspx">Industrial Automation</asp:HyperLink>
            <br />
            <br />
            Our aim is to leverage added value from our expertise in a variety ofautomation 
            technologies and one-stop-shop capabilities.<br />
            <br />
            <asp:HyperLink ID="HyperLink11" runat="server" 
                NavigateUrl="~/industrialautomation.aspx">more....</asp:HyperLink>
            <br />
            <br />
                        </td><td>
                            <asp:HyperLink ID="HyperLink14" runat="server" 
                                NavigateUrl="~/webdevelopment.aspx">Web Development</asp:HyperLink>
                            <br />
                            <br />
                            Param&#8217;s web development team has vast experience in developing web applications 
                            for B2B and B2C business. We offer Web development services in the following 
                            areas<br />
                <br />
                <asp:HyperLink ID="HyperLink15" runat="server" 
                    NavigateUrl="~/webdevelopment.aspx">more....</asp:HyperLink>
                <br />
                <br />
                <br />
                        </td></tr>
        <tr><td class="style17">
            <asp:HyperLink ID="HyperLink12" runat="server" 
                NavigateUrl="~/applicationdevelopment.aspx">Application Development</asp:HyperLink>
            <br />
            <br />
            Our offshore outsourcing software application development services include 
            customized application development as well as application enhancement / 
            maintenance and upgrades for existing and emerging business operations. At 
            Param, we use latest technology to create powerful solutions that are focused to 
            add business values and increase business process efficiency. We focus on 
            building applications using software components which reduce cost and time of 
            development.<br />
            <br />
            <asp:HyperLink ID="HyperLink13" runat="server" 
                NavigateUrl="~/applicationdevelopment.aspx">more....</asp:HyperLink>
            </td><td>
                <asp:HyperLink ID="HyperLink16" runat="server" 
                    NavigateUrl="~/softwarecomponent.aspx">Software component Development</asp:HyperLink>
                <br />
                <br />
                Component Based Software Development means focusing on building large system by 
                integrating existing or newly created components for the purpose of reusability. 
                This increases flexibility and maintainability of the system, reduce software 
                design, development, testing and maintenance cost. This also makes sure that, 
                some code in system is written once only rather than multiple times in single 
                system and reused wherever required rather then re-written.<br />
                <br />
                <asp:HyperLink ID="HyperLink17" runat="server" 
                    NavigateUrl="~/softwarecomponent.aspx">more....</asp:HyperLink>
            </td></tr>
    </table>
</asp:Content>

