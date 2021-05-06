<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo36c.aspx.cs" Inherits="Demos_Demo36c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #36c - Retrieve Cookie Value</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #36c - Retrieve Cookie Value</h1>
            <br />
            <br />

            Your zip code is:
            <strong>
                <asp:Literal ID="litZipCode" runat="server"></asp:Literal>
            </strong>

            <br />
            <br />

            <asp:HyperLink ID="hypWeather" runat="server">Click here to see the weather in your area</asp:HyperLink>
            
            <br />
            <br />
            <br />

            Your favorite color:
            <br />

            <div style="padding: 0px 50px">
                <asp:Table ID="tabFavColor" runat="server" Height="100px" Width="100px">
                    <asp:TableRow>
                        <asp:TableCell>
                            &#160;
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>


            <br />
            <br />
            <a href="Demo36 (Cookies).aspx">Go back to Demo #36 menu.</a>



        </div>
    </form>
</body>
</html>
