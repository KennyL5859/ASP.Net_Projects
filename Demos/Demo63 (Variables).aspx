<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo63 (Variables).aspx.cs" Inherits="Demos_Demo63__Variables_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #63 Variables</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #63 Variables</h1>
            <br /><br />

            Number 1:
            <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
            <br />
            <br />
        
            Number 2:
            <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnCompute" runat="server" Text="Compute" OnClick="btnCompute_Click" />
            <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />

                   
            <br /> <br />
            <span style="font-size:xx-large; color: red;"><asp:Literal ID="litAnswer" runat="server"></asp:Literal></span>
        </div>
    </form>
</body>
</html>
