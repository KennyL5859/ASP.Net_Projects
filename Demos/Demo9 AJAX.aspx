<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo9 AJAX.aspx.cs" Inherits="Demos_Demo9_AJAX" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #9 AJAX</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #9 AJAX</h1>
            <br />
            <br />

            <%-- Uses AJAX, can be put anywhere --%>
            <asp:ScriptManager ID="scmScriptManager" runat="server"></asp:ScriptManager>

            <%-- this will only update the table, not rest of page --%>
            <asp:UpdatePanel ID="upnSelectDate" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>The date you have selected for this query is</td>
                            <td>
                                <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
                                <asp:HiddenField ID="hidShowCalFlag" runat="server" />
                                <asp:LinkButton ID="lkbShowCal" runat="server" OnClick="lkbShowCal_Click">Show Calendar</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>&#160;</td>
                            <td>
                                <asp:Calendar ID="calSelectDate" runat="server" Visible="false" OnSelectionChanged="calSelectDate_SelectionChanged"></asp:Calendar>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>


            <br />
            <br />
            <hr />
            <br />
            <br />

            <pre>
                Buck did not read the newspapers, or he would have known that trouble
                was brewing, not alone for himself, but for every tide-water dog, strong
                of muscle and with warm, long hair, from Puget Sound to San Diego.
                Because men, groping in the Arctic darkness, had found a yellow metal,
                and because steamship and transportation companies were booming the
                find, thousands of men were rushing into the Northland. These men wanted
                dogs, and the dogs they wanted were heavy dogs, with strong muscles by
                which to toil, and furry coats to protect them from the frost.
            </pre>
        </div>
    </form>
</body>
</html>
