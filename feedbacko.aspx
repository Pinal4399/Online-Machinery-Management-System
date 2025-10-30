<%@ Page Language="VB" MasterPageFile="~/owner.master" AutoEventWireup="false" CodeFile="feedbacko.aspx.vb" Inherits="feedbacko" title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    <br />
</p>
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="true" EnableDatabaseLogonPrompt="False" />
</asp:Content>

