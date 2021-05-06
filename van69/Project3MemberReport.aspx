<%@ Page Title="Kenneth L. (#69) - Member History Report" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project3MemberReport.aspx.cs" Inherits="van69_Project3MemberReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Member History Report</h1>

        <table>
        <tr>
            <td>
                <a href="Project3CheckOut.aspx">
                    <img src="ButtonPics/Checkout_unselect.png" alt="Check Out" /></a><br />
                <a href="Project3MemberList.aspx">
                    <img src="ButtonPics/MemberList_unselect.png" alt="Member List" /></a><br />
                <a href="Project3MemberReport.aspx">
                    <img src="ButtonPics/MemberReport_select.png" alt="Member Report" /></a><br />
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
                <asp:SqlDataSource ID="sqlMembers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [van69MembersView] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>
                <asp:ListBox ID="lstMembers" runat="server" DataSourceID="sqlMembers"
                     Rows="25" DataTextField="FullName" DataValueField="CardNbr"
                     AutoPostBack="true"></asp:ListBox>
            </td>

            <td>
                <asp:SqlDataSource ID="sqlMemberRpt" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [RentalID], [MovieNbr], [RentDate], [Title] FROM [van69RentalsView] WHERE ([CardNbr] = @CardNbr) ORDER BY [RentDate] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lstMembers" PropertyName="SelectedValue" Name="CardNbr" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="grdMemberRpt" runat="server" DataSourceID="sqlMemberRpt"
                    AutoGenerateColumns="False" DataKeyNames="RentalID" AllowPaging="true"
                    AllowSorting="true" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="RentalID" HeaderText="Rental ID" ReadOnly="True" SortExpression="RentalID"></asp:BoundField>
                        <asp:BoundField DataField="MovieNbr" HeaderText="Movie #" SortExpression="MovieNbr"></asp:BoundField>
                        <asp:BoundField DataField="RentDate" HeaderText="Date" ReadOnly="True" SortExpression="RentDate" HeaderStyle-Wrap="False" ItemStyle-Wrap="False"></asp:BoundField>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-Wrap="False" ItemStyle-Wrap="False"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

