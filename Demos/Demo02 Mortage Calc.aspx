<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo02 Mortage Calc.aspx.cs" Inherits="Demos_Demo02_Mortage_Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Jim S. - Mortgage Calculator</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Jim S.  (#99) - Mortgage Calculator</h1>
        <br />
        
        Principal Amount:
        <asp:TextBox ID="txtPrincipal" runat="server" />
        <br />
        
        Annual Interest Rate:
        <asp:TextBox ID="txtIntRate" runat="server" />
        <br />
        
        Mortgage Length:
        <asp:TextBox ID="txtPeriods" runat="server" />
        <asp:Literal ID="litPeriod" runat="server">years</asp:Literal> 
        <br />
        <br />
        
        <asp:RadioButtonList ID="rblPeriod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblPeriod_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="years">Years</asp:ListItem>
            <asp:ListItem Value="months">Months</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        
        <asp:Button ID="btnCompute" runat="server" Text="Compute Monthly Payment" OnClick="btnCompute_Click" />
        <br />
        <br />
        <br />
        <strong><asp:Literal ID="litResult" runat="server" /></strong>
        <br />

    </div>
    <br /><br />
    <img src="http://www.thatlink.com/classes/images/html5-css3.jpg" alt="Validate" usemap="#ValidationMap" />
    <map name="ValidationMap">
        <area shape="rect" coords="0,0,90,79" alt="HTML5 Validation"
            href="/Validate.aspx?type=xhtml5&amp;url=referrer" />
        <area shape="rect" coords="91,0,180,79" alt="CSS3 Validation"
            href="/Validate.aspx?type=css3&amp;url=referrer" />
    </map>     
    </form>
</body>
</html>
