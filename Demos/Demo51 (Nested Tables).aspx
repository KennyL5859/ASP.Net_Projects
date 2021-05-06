<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo51 (Nested Tables).aspx.cs" Inherits="Demos_Demo02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #51 - Nested Tables and CSS</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        table.navtable {background-color: yellow;}
        table.calendar {background-color: cyan;}
        table.navtable > tbody > tr > td{padding: 30px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #51 - Nested Tables and CSS</h1>
            <br />

            <table class="navtable">
                <tr>
                    <td>
                        <strong>Nested Table and CSS</strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlMonth" runat="server">
                            <asp:ListItem Value="1">January</asp:ListItem>
                            <asp:ListItem Value="2">February</asp:ListItem>
                            <asp:ListItem Value="3">March</asp:ListItem>
                            <asp:ListItem Value="4">April</asp:ListItem>
                            <asp:ListItem Value="5">May</asp:ListItem>
                            <asp:ListItem Value="6">June</asp:ListItem>
                            <asp:ListItem Value="7">July</asp:ListItem>
                            <asp:ListItem Value="8">August</asp:ListItem>
                            <asp:ListItem Value="9">September</asp:ListItem>
                            <asp:ListItem Value="10">October</asp:ListItem>
                            <asp:ListItem Value="11">November</asp:ListItem>
                            <asp:ListItem Value="12">December</asp:ListItem>
                        </asp:DropDownList>

                        <asp:DropDownList ID="ddlYear" runat="server">
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                            <asp:ListItem>2026</asp:ListItem>
                            <asp:ListItem>2027</asp:ListItem>
                        </asp:DropDownList>

                        <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
                    </td>
                </tr>
            </table>       

            

            <asp:Calendar ID="calMain" runat="server" FirstDayOfWeek="Sunday"></asp:Calendar>
            <br /><br /><br />
            <asp:CheckBox ID="chkMonday" runat="server" Text="Start on Monday" 
                OnCheckedChanged="chkMonday_CheckedChanged" AutoPostBack="true" />

        </div>
    </form>
</body>
</html>
