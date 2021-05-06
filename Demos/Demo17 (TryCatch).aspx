<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo17 (TryCatch).aspx.cs" Inherits="Demos_Demo17__TryCatch_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demos #17 - Try / Catch Exceptions</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demos #17 - Try / Catch Exceptions</h1>
            <br />
            <br />

            Dividend:
            <asp:TextBox ID="txtDividend" runat="server"></asp:TextBox>
            <br />
            <br />

            Divisor:
            <asp:TextBox ID="txtDivisor" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" />
            <br />
            <br />

            <strong>
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
            </strong>


        </div>
    </form>
</body>
</html>
