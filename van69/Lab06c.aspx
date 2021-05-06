<%@ Page Title="Kenneth L. (#69) - Lab #6c" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab06c.aspx.cs" Inherits="van69_Lab06c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Lab #4 Multiview</h1>
    <br />

    <%-- 3 radio buttons that displays each view --%>
    <asp:RadioButton ID="radAdRotator" runat="server" Text="Ad Rotator"
        GroupName="Feature" Checked="true" OnCheckedChanged="radAdRotator_CheckedChanged"
        AutoPostBack="true" />

    <asp:RadioButton ID="radQuickLinks" runat="server" Text="Quicklinks"
        GroupName="Feature" OnCheckedChanged="radQuickLinks_CheckedChanged"
        AutoPostBack="true" />

    <asp:RadioButton ID="radMadLibs" runat="server" Text="Mad Libs"
        GroupName="Feature" OnCheckedChanged="radMadLibs_CheckedChanged"
        AutoPostBack="true" />

    <br /><br />

    <%-- Multi-view that contains 3 separate views --%>
    <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0">

        <%-- View that displays an ad rotator and links to wikipedia --%>
        <asp:View ID="viwAdRotator" runat="server">
            <asp:Button ID="btnRefresh" runat="server" Text="Refresh" />
            <br />
            <br />
            <asp:AdRotator ID="adrAdRotator" runat="server" AdvertisementFile="Lab04Adverts_van69.xml"
                Height="500" Width="800" />
        </asp:View>

        <%-- View that displays a drop down list that links to websites --%>
        <asp:View ID="viwQuickLinks" runat="server">
            <asp:DropDownList ID="ddlLinks" runat="server">
                <asp:ListItem Selected="True">Select...</asp:ListItem>
                <asp:ListItem Value="https://www.naperville-lib.org/">Naperville Public Library</asp:ListItem>
                <asp:ListItem Value="https://finance.yahoo.com/">Yahoo Finance</asp:ListItem>
                <asp:ListItem Value="https://www.reddit.com/">Reddit</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
        </asp:View>

        <%-- View that contains a simple Mad Lib game --%>
        <asp:View ID="viwMadLibs" runat="server">
            <h2>Exclamation:</h2>
            <asp:DropDownList ID="ddlExclamations" runat="server" OnSelectedIndexChanged="ddlExclamations_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>--</asp:ListItem>
                <asp:ListItem>Ouch</asp:ListItem>
                <asp:ListItem>Wow</asp:ListItem>
                <asp:ListItem>Fantastic</asp:ListItem>
                <asp:ListItem>Awesome</asp:ListItem>
                <asp:ListItem>Brilliant</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

            <h2>Adverb:</h2>
            <asp:RadioButtonList ID="radlAdverbs" runat="server" CssClass="radioList" OnSelectedIndexChanged="radlAdverbs_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Selected="True">Boldly</asp:ListItem>
                <asp:ListItem>Happily</asp:ListItem>
                <asp:ListItem>Kindly</asp:ListItem>
                <asp:ListItem>Perfectly</asp:ListItem>
                <asp:ListItem>Gracefully</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />

            <h2>Noun:</h2>
            <asp:ListBox ID="lstNouns" runat="server" Rows="5" OnSelectedIndexChanged="lstNouns_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Soccer</asp:ListItem>
                <asp:ListItem>Book</asp:ListItem>
                <asp:ListItem>Football</asp:ListItem>
                <asp:ListItem>Basketball</asp:ListItem>
                <asp:ListItem>Computer</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <br />

            <%-- Link to page that displays Mad Lib results --%>
            <a href="Lab04b.aspx">See the Mad Lib</a>
        </asp:View>
    </asp:MultiView>



</asp:Content>

