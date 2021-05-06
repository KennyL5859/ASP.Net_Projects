<%@ Page Title="Kenneth L. (#69) - New Member" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project3NewMember.aspx.cs" Inherits="van69_Project3NewMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <h1>New Member</h1>

    <table>
        <tr>
            <td>
                <a href="Project3CheckOut.aspx">
                    <img src="ButtonPics/Checkout_unselect.png" alt="Check Out" /></a><br />
                <a href="Project3MemberList.aspx">
                    <img src="ButtonPics/MemberList_unselect.png" alt="Member List" /></a><br />
                <a href="Project3MemberReport.aspx">
                    <img src="ButtonPics/MemberReport_unselect.png" alt="Member Report" /></a><br />
                <a href="Project3MovieList.aspx">
                    <img src="ButtonPics/MovieList_unselect.png" alt="Movie List" /></a><br />
                <a href="Project3MovieReport.aspx">
                    <img src="ButtonPics/MovieReport_unselect.png" alt="Movie Report" /></a><br />
                <a href="Project3NewMember.aspx">
                    <img src="ButtonPics/NewMember_select.png" alt="New Member" /></a><br />
                <a href="Project3NewMovie.aspx">
                    <img src="ButtonPics/NewMovie_unselect.png" alt="New Movie" /></a><br />
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMembers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' InsertCommand="INSERT INTO [van69Members] ([CardNbr], [LastName], [FirstName], [StreetAddr], [City], [StateAbbr], [PostalCode], [PhoneNbr], [DateOfBirth]) VALUES (@CardNbr, @LastName, @FirstName, @StreetAddr, @City, @StateAbbr, @PostalCode, @PhoneNbr, @DateOfBirth)">

                    <InsertParameters>
                        <asp:Parameter Name="CardNbr" Type="String"></asp:Parameter>
                        <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                        <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                        <asp:Parameter Name="StreetAddr" Type="String"></asp:Parameter>
                        <asp:Parameter Name="City" Type="String"></asp:Parameter>
                        <asp:Parameter Name="StateAbbr" Type="String"></asp:Parameter>
                        <asp:Parameter Name="PostalCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="PhoneNbr" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="DateOfBirth"></asp:Parameter>
                    </InsertParameters>

                </asp:SqlDataSource>
                <asp:DetailsView ID="dtvMembers" runat="server" Height="50px" Width="125px"
                    DataSourceID="sqlMembers" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="CardNbr">
                    <Fields>
                        <asp:BoundField DataField="CardNbr" HeaderText="Card #" ReadOnly="True" SortExpression="CardNbr"></asp:BoundField>
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                        <asp:BoundField DataField="StreetAddr" HeaderText="Address" SortExpression="StreetAddr"></asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                        <asp:BoundField DataField="StateAbbr" HeaderText="State" SortExpression="StateAbbr"></asp:BoundField>
                        <asp:BoundField DataField="PostalCode" HeaderText="Zip Code" SortExpression="PostalCode"></asp:BoundField>
                        <asp:BoundField DataField="PhoneNbr" HeaderText="Telephone" SortExpression="PhoneNbr"></asp:BoundField>
                        <asp:BoundField DataField="DateOfBirth" HeaderText="DOB" SortExpression="DateOfBirth"></asp:BoundField>
                        <asp:CommandField ShowCancelButton="true" ShowInsertButton="true" />

                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

