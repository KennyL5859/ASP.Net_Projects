<%--
Name:         Kenneth Lin
Class:        CIS-2350
Assignment:   Lab #4 Spring 2021
File:         Lab04b.aspx
Purpose:      Aspx file that displays the mad lib output
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab04b.aspx.cs" Inherits="van69_Lab04_Lab04b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kenneth L. (#69) - Lab #4b - Display Mad Lib</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Kenneth L. (#69) - Lab #4b - Display Mad Lib</h1>
            <br /><br />            

            <%-- Mad Lib results using labels --%>
            "<asp:Label ID="lblExclamation" runat="server" CssClass="madLib"></asp:Label>
            ! he said, as he
           <asp:Label ID="lblAdverb" runat="server" CssClass="madLib"></asp:Label>
            kicked the
            <asp:Label ID="lblNoun" runat="server" CssClass="madLib"></asp:Label>"

            <br /><br /><br /><br />

            <%-- Link to original page --%>
            <a href="Lab04.aspx">Lab #4 Main Page</a>

            <%-- Link to Mad Lib Wikipedia page --%>
            <a href="https://en.wikipedia.org/wiki/Mad_Libs">Mad Lib Source</a>

            <br /><br /><br />

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
