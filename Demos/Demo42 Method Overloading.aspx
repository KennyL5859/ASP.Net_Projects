<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo42 Method Overloading.aspx.cs" Inherits="Demos_Demo42_Method_Overloading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #42 - App Code and Method Overloading</h1>
            <br />
            <br />

            <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
            <asp:Button ID="btnCheckPrime1" runat="server" Text="Check If Prime" OnClick="btnCheckPrime1_Click" />
            <br />

            <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
            <asp:Button ID="btnCheckPrime2" runat="server" Text="Check If Prime" OnClick="btnCheckPrime2_Click" />
            <br />

            <br />

            <strong>
                <asp:Literal ID="litResults" runat="server"></asp:Literal>
            </strong>

        </div>
    </form>
</body>
</html>
