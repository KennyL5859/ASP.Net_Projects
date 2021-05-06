
<%--
Name:         Kenneth Lin
Class:        CIS-2350
Assignment:   Lab #3 Spring 2021
File:         Lab03.aspx
Purpose:      Aspx file with webpage layout
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab03.aspx.cs" Inherits="van69_Lab03_Lab03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kenneth L. (#69) - Lab #3</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Kenneth L. (#69) - Lab #3</h1>
            
            
            <h1>Electronic Vehicles by Manufacturer</h1>

            <%-- Table for the web contents --%>
            <table>
                <tr>
                    <td>
                        <h3>Select an auto manufacturer:</h3>
                        <br />

                        <%-- Listbox for car manufacturers --%>
                        <asp:ListBox ID="lstAutoMaker" runat="server"                       
                            AutoPostBack="true" OnSelectedIndexChanged="lstAutoMaker_SelectedIndexChanged" Rows="10" >
                            <asp:ListItem Selected="True" Value="E-Tron 55">Audi</asp:ListItem>
                            <asp:ListItem Value="i3">BMW</asp:ListItem>
                            <asp:ListItem Value="Bolt EV">Chevrolet</asp:ListItem>
                            <asp:ListItem Value="Mustang Mach-E">Ford</asp:ListItem>
                            <asp:ListItem Value="Clarity">Honda</asp:ListItem>
                            <asp:ListItem Value="Kona">Hyundai</asp:ListItem>
                            <asp:ListItem Value="EQC">Mercedes</asp:ListItem>
                            <asp:ListItem Value="EC6">NIO</asp:ListItem>
                            <asp:ListItem Value="Leaf">Nissan</asp:ListItem>
                            <asp:ListItem Value="Model S">Tesla</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <%-- Literal for car make and model --%>
                        <h2><asp:Literal ID="litModel" runat="server">Audi E-Tron 55</asp:Literal></h2>
                        <br /><br />

                        <%-- Image of the model --%>
                        <asp:Image ID="imgCar" runat="server" ImageUrl="Lab03_Images/Audi.jpg" 
                            Width="800" Height="500" AlternateText="Car Image"/>
                        <br /><br />

                        <%-- Hyperlink to specific Wikipedia page --%>
                        <asp:HyperLink ID="hypEV" runat="server" 
                            NavigateUrl="https://en.wikipedia.org/wiki/Audi_e-tron_(2018)">
                            Click here to see Audi E-Tron 55 on Wikipedia</asp:HyperLink>
                        <br /><br />

                        <%-- Image button that redirects to hyperlink page --%>
                        <asp:ImageButton ID="imbEV" runat="server" 
                            ImageUrl="Lab03_Images/WikipediaLogo.jpg" 
                            OnClick="imbEV_Click" AlternateText="Wikipedia Logo"/>

                    </td>
                </tr>
            </table>

            <%-- Validator logo with link --%>
            <img src="http://www.thatlink.com/classes/images/html5-css3.jpg" alt="Validate" usemap="#ValidationMap" />
            <map name="ValidationMap">
	            <area shape="rect" coords="0,0,90,79" alt="XHTML5 Validation"
		            href="/Validate.aspx?type=xhtml5&amp;url=referrer" />
	            <area shape="rect" coords="91,0,180,79" alt="CSS3 Validation"
		            href="/Validate.aspx?type=css3&amp;url=referrer" />
            </map> 

        </div>
    </form>
</body>
</html>
