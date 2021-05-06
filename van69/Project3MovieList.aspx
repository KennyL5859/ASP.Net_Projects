<%@ Page Title="Kenneth L. (#69) - Movie List" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project3MovieList.aspx.cs" Inherits="van69_Project3MovieList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Movie List</h1>

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
                    <img src="ButtonPics/MovieList_select.png" alt="Movie List" /></a><br />
                <a href="Project3MovieReport.aspx">
                    <img src="ButtonPics/MovieReport_unselect.png" alt="Movie Report" /></a><br />
                <a href="Project3NewMember.aspx">
                    <img src="ButtonPics/NewMember_unselect.png" alt="New Member" /></a><br />
                <a href="Project3NewMovie.aspx">
                    <img src="ButtonPics/NewMovie_unselect.png" alt="New Movie" /></a><br />
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMovies" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' DeleteCommand="DELETE FROM [van69Movies] WHERE [MovieNbr] = @MovieNbr" InsertCommand="INSERT INTO [van69Movies] ([MovieNbr], [Title], [ReleasedDate]) VALUES (@MovieNbr, @Title, @ReleasedDate)" SelectCommand="SELECT * FROM [van69Movies] ORDER BY [MovieNbr]" UpdateCommand="UPDATE [van69Movies] SET [Title] = @Title, [ReleasedDate] = @ReleasedDate WHERE [MovieNbr] = @MovieNbr">
                    <DeleteParameters>
                        <asp:Parameter Name="MovieNbr" Type="Decimal"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MovieNbr" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="ReleasedDate"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="ReleasedDate"></asp:Parameter>
                        <asp:Parameter Name="MovieNbr" Type="Decimal"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="grdMovies" runat="server" DataSourceID="sqlMovies"
                    AutoGenerateColumns="False" DataKeyNames="MovieNbr" AllowPaging="true"
                    AllowSorting="true" PageSize="10">
                    <Columns>
                        <asp:CommandField ShowCancelButton="true" ShowEditButton="true"/>
                        <asp:BoundField DataField="MovieNbr" HeaderText="Movie #" ReadOnly="True" SortExpression="MovieNbr"></asp:BoundField>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                        <asp:BoundField DataField="ReleasedDate" HeaderText="Released Date" SortExpression="ReleasedDate"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

