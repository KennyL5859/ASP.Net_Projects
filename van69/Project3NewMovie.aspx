<%@ Page Title="Kenneth L. (#69) - New Movie" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project3NewMovie.aspx.cs" Inherits="van69_Project3NewMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>New Movie</h1>

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
                    <img src="ButtonPics/NewMember_unselect.png" alt="New Member" /></a><br />
                <a href="Project3NewMovie.aspx">
                    <img src="ButtonPics/NewMovie_select.png" alt="New Movie" /></a><br />
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMovies" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' InsertCommand="INSERT INTO [van69Movies] ([MovieNbr], [Title], [ReleasedDate]) VALUES (@MovieNbr, @Title, @ReleasedDate)">

                    <InsertParameters>
                        <asp:Parameter Name="MovieNbr" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="ReleasedDate"></asp:Parameter>
                    </InsertParameters>
     
                </asp:SqlDataSource>
                <asp:DetailsView ID="dtvMovies" runat="server" Height="50px" Width="125px"
                    DefaultMode="Insert" DataSourceID="sqlMovies" AutoGenerateRows="False" DataKeyNames="MovieNbr">
                    <Fields>                        
                        <asp:BoundField DataField="MovieNbr" HeaderText="Movie #" ReadOnly="True" SortExpression="MovieNbr"></asp:BoundField>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                        <asp:BoundField DataField="ReleasedDate" HeaderText="Released Date" SortExpression="ReleasedDate"></asp:BoundField>
                        <asp:CommandField ShowCancelButton="true" ShowInsertButton="true" />
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

