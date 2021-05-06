<%@ Page Title="Kenneth L. (#69) - Lab #6a" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab06a.aspx.cs" Inherits="van69_Lab06a" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Lab #6a Calendar</h1>

    <%-- Drop down list that contains the months --%>
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

    <%-- Drop down list that contains the years --%>
    <asp:DropDownList ID="ddlYear" runat="server">
        <asp:ListItem>2021</asp:ListItem>
        <asp:ListItem>2022</asp:ListItem>
        <asp:ListItem>2023</asp:ListItem>
        <asp:ListItem>2024</asp:ListItem>
        <asp:ListItem>2025</asp:ListItem>
        <asp:ListItem>2026</asp:ListItem>
        <asp:ListItem>2027</asp:ListItem>
    </asp:DropDownList>

    <%-- When clciked, changes the calendar to month/years corresponding to ddl --%>
    <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />

    <%-- Calendar Control --%>
    <asp:Calendar ID="calMain" runat="server" FirstDayOfWeek="Sunday"></asp:Calendar>
    <br />
    <br />
    <br />

    <%-- Changes the calendar first day of week to either Sunday or Monday --%>
    <asp:CheckBox ID="chkMonday" runat="server" Text="Start on Monday"
        OnCheckedChanged="chkMonday_CheckedChanged" AutoPostBack="true" />
</asp:Content>

