<%@ Page Title="Kenneth L. (#69) - Member List" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project3MemberList.aspx.cs" Inherits="van69_Project3MemberList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Member List</h1>

    <table>
        <tr>
            <td>
                <a href="Project3CheckOut.aspx">
                    <img src="ButtonPics/Checkout_unselect.png" alt="Check Out" /></a><br />
                <a href="Project3MemberList.aspx">
                    <img src="ButtonPics/MemberList_select.png" alt="Member List" /></a><br />
                <a href="Project3MemberReport.aspx">
                    <img src="ButtonPics/MemberReport_unselect.png" alt="Member Report" /></a><br />
                <a href="Project3MovieList.aspx">
                    <img src="ButtonPics/MovieList_unselect.png" alt="Movie List" /></a><br />
                <a href="Project3MovieReport.aspx">
                    <img src="ButtonPics/MovieReport_unselect.png" alt="Movie Report" /></a><br />
                <a href="Project3NewMember.aspx">
                    <img src="ButtonPics/NewMember_unselect.png" alt="New Member" /></a><br />
                <a href="Project3NewMovie.aspx">
                    <img src="ButtonPics/NewMovie_unselect.png" alt="New Movie" /></a><br />
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMembers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' DeleteCommand="DELETE FROM [van69Members] WHERE [CardNbr] = @CardNbr" InsertCommand="INSERT INTO [van69Members] ([CardNbr], [LastName], [FirstName], [StreetAddr], [City], [StateAbbr], [PostalCode], [PhoneNbr], [DateOfBirth]) VALUES (@CardNbr, @LastName, @FirstName, @StreetAddr, @City, @StateAbbr, @PostalCode, @PhoneNbr, @DateOfBirth)" SelectCommand="SELECT * FROM [van69Members] ORDER BY [CardNbr]" UpdateCommand="UPDATE [van69Members] SET [LastName] = @LastName, [FirstName] = @FirstName, [StreetAddr] = @StreetAddr, [City] = @City, [StateAbbr] = @StateAbbr, [PostalCode] = @PostalCode, [PhoneNbr] = @PhoneNbr, [DateOfBirth] = @DateOfBirth WHERE [CardNbr] = @CardNbr">
                    <DeleteParameters>
                        <asp:Parameter Name="CardNbr" Type="String"></asp:Parameter>
                    </DeleteParameters>
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
                    <UpdateParameters>
                        <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                        <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                        <asp:Parameter Name="StreetAddr" Type="String"></asp:Parameter>
                        <asp:Parameter Name="City" Type="String"></asp:Parameter>
                        <asp:Parameter Name="StateAbbr" Type="String"></asp:Parameter>
                        <asp:Parameter Name="PostalCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="PhoneNbr" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="DateOfBirth"></asp:Parameter>
                        <asp:Parameter Name="CardNbr" Type="String"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="grdMembers" runat="server"
                     DataSourceID="sqlMembers" AutoGenerateColumns="False" DataKeyNames="CardNbr"
                     AllowPaging="true" AllowSorting="true" PageSize="10">
                    <Columns>
                        <asp:CommandField ShowEditButton="true" ShowDeleteButton="true"/>
                        <asp:BoundField DataField="CardNbr" HeaderText="Card #" ReadOnly="True" SortExpression="CardNbr"></asp:BoundField>
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                        <asp:BoundField DataField="StreetAddr" HeaderText="Address" SortExpression="StreetAddr" HeaderStyle-Wrap="False" ItemStyle-Wrap="False"></asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                        <asp:BoundField DataField="StateAbbr" HeaderText="State" SortExpression="StateAbbr"></asp:BoundField>
                        <asp:BoundField DataField="PostalCode" HeaderText="Zip Code" SortExpression="PostalCode"></asp:BoundField>
                        <asp:BoundField DataField="PhoneNbr" HeaderText="Telephone Number" SortExpression="PhoneNbr" HeaderStyle-Wrap="False" ItemStyle-Wrap="False"></asp:BoundField>
                        <asp:BoundField DataField="DateOfBirth" HeaderText="DOB" SortExpression="DateOfBirth" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

