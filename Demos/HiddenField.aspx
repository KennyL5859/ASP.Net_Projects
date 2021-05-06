<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HiddenField.aspx.cs" Inherits="Demos_HiddenField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #3 - Panel and Link Button</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #3 - Panel and Link Button</h1>
            <br /><br />

            <p>
                <strong>Today's weather: 47&#176;F - mostly cloudy</strong>
                <asp:LinkButton ID="lkbShowDetails" runat="server" OnClick="lkbShowDetails_Click">Show Details</asp:LinkButton>
                <asp:Panel ID="pnlDetails" runat="server" Visible="false">
                    <em>Humidity:</em>	26 %<br />
                    <em>Wind Speed:</em>	NW 14 MPH<br />
                    <em>Barometer:</em>	30.21" (1023.2 mb)<br />
                    <em>Dew Point:</em>	14 &#176;F (-10 &#176;C)<br />
                    <em>Wind Chill:</em>	41 &#176;F (5 &#176;C)<br />
                    <em>Visibility:</em>	&lt; 10.00 mi.<br />
                    <br />
                    <em>Tonight:</em> Mostly clear, with a low around 33. Northwest wind around 5 mph.<br />
                    <em>Wednesday:</em> Sunny, with a high near 59. North northwest wind 5 to 10 mph becoming west southwest. <br />
                    <em>Wednesday Night:</em> Partly cloudy, with a low around 38. Calm wind becoming south southeast around 5 mph.<br />
                </asp:Panel>

            </p>
        </div>
    </form>
</body>
</html>
