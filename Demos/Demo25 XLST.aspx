<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo25 XLST.aspx.cs" Inherits="Demos_Demo25_XLST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #25 - XSLT</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        table {
            border-width: 1px;
            border-spacing: 0px;
            border-style: outset;
            border-color: #cccccc;
            border-collapse: separate;
            background-color: #ffffff;
        }

            table td {
                border-width: thin;
                padding: 3px;
                border-style: inset;
                border-color: #cccccc;
            }

            table th {
                border-width: 1px;
                border-spacing: 0px;
                padding: 3px;
                border-style: inset;
                border-color: #444444;
                background-color: #e1d5bd;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Demo #25 - XSLT</h1>
            <br />   

            <asp:DropDownList ID="ddlViewSelector" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlViewSelector_SelectedIndexChanged">
                <asp:ListItem Value="CD">CD Collection</asp:ListItem>
                <asp:ListItem Value="States">States</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />

            <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0">

                <asp:View ID="viwCdCollection" runat="server">
                    <asp:Xml ID="xmlCd" runat="server" 
                         DocumentSource="CDCollection.xml"
                         TransformSource="Demo25.xslt">
                    </asp:Xml>
                </asp:View>

                <asp:View ID="viwStates" runat="server">
                    <asp:Xml ID="xmlStates" runat="server"
                         DocumentSource="States.xml"
                         TransformSource="Demo25b.xslt"></asp:Xml>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
