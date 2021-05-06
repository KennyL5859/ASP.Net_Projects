<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo50Process.aspx.cs" Inherits="Demos_Demo50Process" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>#50 - Form Results</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>#50 - Form Results</h1>
            <table>
                <tr>
                    <td>Name</td>
                    <td><asp:Literal ID="litName" runat="server"></asp:Literal></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><asp:Literal ID="litEmail" runat="server"></asp:Literal></td>
                </tr>
                <tr>
                    <td>Telephone</td>
                    <td><asp:Literal ID="litTelephone" runat="server"></asp:Literal></td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td><asp:Literal ID="litComments" runat="server"></asp:Literal></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
