<%@ Page Title="Kenneth L. (#69) - Checkout" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project3CheckOut.aspx.cs" Inherits="van69_Project3CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Checkout</h1>

    <table>
        <tr>
            <td>
                <a href="Project3CheckOut.aspx">
                    <img src="ButtonPics/Checkout_select.png" alt="Check Out" /></a><br />
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
                    <img src="ButtonPics/NewMovie_unselect.png" alt="New Movie" /></a><br />
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMembers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [van69MembersView] ORDER BY [FullName]"></asp:SqlDataSource>
                <asp:ListBox ID="lstMembers" runat="server" DataSourceID="sqlMembers"
                     DataTextField="FullName" Rows="25" DataValueField="CardNbr"></asp:ListBox>        
            </td>
            <td>
                <asp:SqlDataSource ID="sqlMovies" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [van69Movies] ORDER BY [Title]"></asp:SqlDataSource>
                <asp:ListBox ID="lstMovies" runat="server" DataSourceID="sqlMovies"
                     DataTextField="Title" Rows="25" DataValueField="MovieNbr"></asp:ListBox>
            </td>
        </tr>

        <tr>
            <td></td>
            <td colspan="2" style="text-align: center">
                <asp:ImageButton ID="imgBtnCheckout" runat="server" 
                     ImageUrl="ButtonPics/Checkout.png" OnClick="imgBtnCheckout_Click"
                     AlternateText="Check Out"/>
            </td>
        </tr>
    </table>
</asp:Content>

