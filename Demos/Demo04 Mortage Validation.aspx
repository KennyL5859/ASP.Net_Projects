<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo04 Mortage Validation.aspx.cs" Inherits="Demos_Demo02_Mortage_Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Jim S. - Mortgage Calculator</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        .error {color: red; font-weight: bold;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Jim S.  (#99) - Mortgage Calculator</h1>
        <br />
        
        Principal Amount:
        <asp:TextBox ID="txtPrincipal" runat="server" />
        <asp:RequiredFieldValidator ID="rqvtxtPrincipal" runat="server" 
            ControlToValidate="txtPrincipal"
            CssClass="error"
            SetFocusOnError="true"
            Display="Dynamic"
            ErrorMessage="Principal amount is required"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rgvtxtPrincipal" runat="server"
            ControlToValidate="txtPrincipal"
            CssClass="error"
            SetFocusOnErro="true"
            MinimumValue="50000"
            MaximumValue="10000000"
            Display="Dynamic"
            Type="Double"
            ErrorMessage="Principal must be between 50,000 and 10,000,000"></asp:RangeValidator>
        <br />
        
        Annual Interest Rate:
        <asp:TextBox ID="txtIntRate" runat="server" />
        <asp:RequiredFieldValidator ID="rqvtxtIntRate" runat="server" 
            ControlToValidate="txtIntRate"
            CssClass="error"
            SetFocusOnError="true"
            Display="Dynamic"
            ErrorMessage="Interest rate is required"></asp:RequiredFieldValidator>
        <br />
        
        Mortgage Length:
        <asp:TextBox ID="txtPeriods" runat="server" />
        <asp:Literal ID="litPeriod" runat="server">years</asp:Literal> 
        <asp:RequiredFieldValidator ID="rqvtxtPeriods" runat="server" 
            ControlToValidate="txtPeriods"
            CssClass="error"
            SetFocusOnError="true"
            Display="Dynamic"
            ErrorMessage="Mortgage length is required"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rgvtxtPeriods" runat="server" 
            ControlToValidate="txtPeriods"
            CssClass="error"
            SetFocusOnError="true"
            Display="Dynamic"
            Type="Integer"
            MinimumValue="1"
            MaximumValue="99"
            ErrorMessage="Mortgage length must be between 1 and 99 years"></asp:RangeValidator>
        <br />
        <br />

        Property value:
        <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cmvtxtValue" runat="server" 
            ControlToValidate="txtValue"
            CssClass="error"
            SetFocusOnError="true"
            Display="Dynamic"
            Type="Double"
            Operator="GreaterThanEqual"
            ControlToCompare="txtPrincipal"
            ErrorMessage="Property value must be greater than or equal to principal amount"></asp:CompareValidator>
        <br />

        Zip Code:
        <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="rgvtxtZipCode" runat="server"
            ControlToValidate="txtZipCode" 
            ValidationExpression="\d{5}(-\d{4})?"
            ErrorMessage="Zip Code must be 5 digits or 5 digits with a hypen and 4 more digits"></asp:RegularExpressionValidator>

        
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
