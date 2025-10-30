<%@ Page Language="VB" MasterPageFile="~/home.master" AutoEventWireup="false" CodeFile="oxyfuelcutting.aspx.vb" Inherits="_Default" title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/oxyfuel.bmp" />
    <br />
   <table> 
   <tr><td> <span class="newStyle2">How Plasma Cutter Workst</span>
   </td></tr>
   <tr><td></td></tr>
   <tr><td><p>Plasma cutters work by sending an electric arc through a gas that is passing through a constricted opening.
    The gas can be shop air, nitrogen, argon, oxygen. etc.
  </p>
   <p>
This elevates the temperature of the gas to the point that it enters a 4th state of matter.
 We all are familiar with the first three: i.e., solid, liquid, and gas. Scientists call this additional state plasma. 
 As the metal being cut is part of the circuit, the electrical conductivity of the plasma causes the arc to transfer to the work.
</p></td></tr>
<tr><td><asp:image  runat="server" ID="Image3" Height="248px" 
        ImageUrl="~/img/moxyfuel.bmp" Width="330px" /> </td></tr>
        <tr><td><p>
        The restricted opening (nozzle) the gas passes through causes it to squeeze by at a high speed,
         like air passing through a venturi in a carburetor. This high speed gas cuts through the molten metal. 
         The gas is also directed around the perimeter of the cutting area to shield the cut.
</p>
<p>In many of today's better plasma cutters, a pilot arc between the electrode and nozzle is used to 
ionize the gas and initially generate the plasma prior to the arc transfer.
</p>
<p>
Other methods that have been used are touching the torch tip to the work to create a spark,
 and the use of a high-frequency starting circuit (like a spark plug). Neither of these latter two 
 methods is compatible with CNC (automated) cutting.
</p></td></tr>
   </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .newStyle2
        {
            font-size: x-large;
        }
    </style>

</asp:Content>


