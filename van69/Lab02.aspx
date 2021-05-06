

<%--
Name:         Kenneth Lin
Class:        CIS-2350
Assignment:   Lab #2 Spring 2021
File:         Lab02.aspx
Purpose:      Aspx file with webpage layout
--%>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab02.aspx.cs" Inherits="van69_Lab02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kenneth L. (#69) - Lab #2</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server" class="lab02">
        <div id="lab02_div">
            <h1>Kenneth L. (#69) - Lab #2</h1>
            <br /><br />

            <%-- Label control --%>
            <asp:Label ID="lblDisplayText" runat="server" Text=""></asp:Label>
            <br /><br /><br />

            <%-- Textbox for user entry --%>
            Enter text: <asp:TextBox ID="txtUserEntry" runat="server"></asp:TextBox> 
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <br /><br />

            <%-- Drop down list for font colors --%>
            Foreground Color:
            <asp:DropDownList ID="ddlForeColor" runat="server" 
                OnSelectedIndexChanged="ddlForeColor_SelectedIndexChanged" 
                AutoPostBack="true">
                <asp:ListItem Selected="True">Black</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>               
                <asp:ListItem>Purple</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>       
                <asp:ListItem>Beige</asp:ListItem>
                <asp:ListItem>Aqua</asp:ListItem>
                <asp:ListItem>DarkBlue</asp:ListItem>
                <asp:ListItem>Chartreuse</asp:ListItem>
                <asp:ListItem>Indigo</asp:ListItem>       
            </asp:DropDownList>
            <br />

            <%-- Drop down list for background colors --%>
            Background Color:
            <asp:DropDownList ID="ddlBackgroundColor" runat="server" 
                OnSelectedIndexChanged="ddlBackgroundColor_SelectedIndexChanged" 
                AutoPostBack="true">
                <asp:ListItem Selected="True">White</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>               
                <asp:ListItem>Purple</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>       
                <asp:ListItem>Beige</asp:ListItem>
                <asp:ListItem>Aqua</asp:ListItem>
                <asp:ListItem>DarkBlue</asp:ListItem>
                <asp:ListItem>Chartreuse</asp:ListItem>
                <asp:ListItem>Indigo</asp:ListItem> 
            </asp:DropDownList>
            <br />

            <%-- Drop down list for font sizes --%>
            Font Size:
            <asp:DropDownList ID="ddlFontSize" runat="server" 
                OnSelectedIndexChanged="ddlFontSize_SelectedIndexChanged" 
                AutoPostBack="true">
                <asp:ListItem>X-Small</asp:ListItem>
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem Selected="True">Medium</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
                <asp:ListItem>X-Large</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <%-- Checkbox for bold font --%>
            <asp:CheckBox ID="chkBold" runat="server"                
                OnCheckedChanged="chkBold_CheckedChanged"
                AutoPostBack="true" Text="Bold" />
            <br />

            <%-- Checkbox for italicized font --%>
            <asp:CheckBox ID="chkItalicized" runat="server" 
                OnCheckedChanged="chkItalicized_CheckedChanged" 
                Text="Italicized" AutoPostBack="true" />
            <br />

            <%-- Checkbox to make text visible or not --%>
            <asp:CheckBox ID="chkVisible" runat="server" 
                OnCheckedChanged="chkVisible_CheckedChanged" 
                Text="Visible" AutoPostBack="true" Checked="true" />
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
