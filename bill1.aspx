<%@ Page Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="bill1.aspx.vb" Inherits="bill1" title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="true" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn2" 
    Font-Bold="True" Font-Size="Larger" Height="42px" Width="125px"/>
    <br />
    <br />
</asp:Content>

