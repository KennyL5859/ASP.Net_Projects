<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo60.aspx.cs" Inherits="Demos_Demo60" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #60 - Prevent Double-Up on Browser Refresh</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #60 - Prevent Double-Up on Browser Refresh</h1>
            <br />
            <br />

            <asp:Label ID="lblStatus" runat="server" Text=""
                 Font-Size="X-Large" Font-Bold="true"></asp:Label>
            <br />
            <br />

            <asp:Button ID="btnButton" runat="server" Text="Button" OnClick="btnButton_Click" />
        </div>
    </form>
</body>
</html>
