<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo64b.aspx.cs" Inherits="Demos_Demo64b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #64b - View Session Variable</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #64b - View Session Variable</h1>
            <br /><br />

            Your favorite color:
            <strong>
                <asp:Literal ID="litFavColor" runat="server"></asp:Literal>
                <br /><br />
            </strong>

            Your random number:
            <strong>
                <asp:Literal ID="litRandom" runat="server"></asp:Literal>
                <br /><br />
            </strong>

            <a href="Demo64 (Sessions).aspx">Change your color selection</a>
        </div>
    </form>
</body>
</html>
