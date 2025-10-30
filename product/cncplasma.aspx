<%@ Page Language="VB" MasterPageFile="~/home.master" AutoEventWireup="false" CodeFile="cncplasma.aspx.vb" Inherits="Default3" title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style2">
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="43px" ImageUrl="~/img/plasma.bmp" 
                    Width="180px" />
            </td>
        </tr>
        <tr>
            <td>How Plasma Cutter Works
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td>Plasma cutters work by sending an electric arc through a gas that is passing through a constricted opening. The gas can be shop air, nitrogen, argon, oxygen. etc.
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td>This elevates the temperature of the gas to the point that it enters a 4th state of matter. We all are familiar with the first three: i.e., solid, liquid, and gas. Scientists call this additional state plasma. As the metal being cut is part of the circuit, the electrical conductivity of the plasma causes the arc to transfer to the work.
                <br />
                <br />
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/mplasma.bmp" 
                                Height="246px" Width="348px" />
                        </td>
                        <td>The restricted opening (nozzle) the gas passes through causes it to squeeze by at a high speed, like air passing through a venturi in a carburetor. This high speed gas cuts through the molten metal. The gas is also directed around the perimeter of the cutting area to shield the cut.<br />
&nbsp;<br />
                            
                            In many of today's better plasma cutters, a pilot azrc between the electrode and nozzle is used to ionize the gas and initially generate the plasma prior to the arc transfer.
                            <br />
                            <br />

Other methods that have been used are touching the torch tip to the work to create a spark, and the use of a high-frequency starting circuit (like a spark plug). Neither of these latter two methods is compatible with CNC (automated) cutting.
                            <br />
                            <br />
</td>
                    </tr>
                </table>
                <br />
                </td>
        </tr>
        
    </table>
</asp:Content>

