<%@ Page Title="Kenneth L. (#69) - Movie History Report" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project3MovieReport.aspx.cs" Inherits="van69_Project3MovieReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <h1>Movie History Report</h1>

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
                    <img src="ButtonPics/MovieReport_select.png" alt="Movie Report" /></a><br />
                <a href="Project3NewMember.aspx">
                    <img src="ButtonPics/NewMember_unselect.png" alt="New Member" /></a><br />
                <a href="Project3NewMovie.aspx">
                    <img src="ButtonPics/NewMovie_unselect.png" alt="New Movie" /></a><br />
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMovies" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [van69Movies] ORDER BY [Title]"></asp:SqlDataSource>
                <asp:ListBox ID="lstMovies" runat="server" DataSourceID="sqlMovies"
                     DataTextField="Title" DataValueField="MovieNbr" Rows="25"
                     AutoPostBack="true"></asp:ListBox>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMoviesRpt" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [RentalID], [CardNbr], [RentDate], [LastName], [FirstName], [PhoneNbr] FROM [van69RentalsView] WHERE ([MovieNbr] = @MovieNbr) ORDER BY [RentDate] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lstMovies" PropertyName="SelectedValue" Name="MovieNbr" Type="Decimal"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="grdMoviesRpt" runat="server" DataSourceID="sqlMoviesRpt"
                    AutoGenerateColumns="False" DataKeyNames="RentalID" AllowPaging="true"
                    AllowSorting="true" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="RentalID" HeaderText="Rental ID" ReadOnly="True" SortExpression="RentalID"></asp:BoundField>
                        <asp:BoundField DataField="CardNbr" HeaderText="Card #" SortExpression="CardNbr"></asp:BoundField>
                        <asp:BoundField DataField="RentDate" HeaderText="Date" ReadOnly="True" SortExpression="RentDate" HeaderStyle-Wrap="False" ItemStyle-Wrap="False"></asp:BoundField>
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                        <asp:BoundField DataField="PhoneNbr" HeaderText="Telephone" SortExpression="PhoneNbr" HeaderStyle-Wrap="False" ItemStyle-Wrap="False"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

