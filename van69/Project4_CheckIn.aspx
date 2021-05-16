<%@ Page Title="Kenneth L." Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project4_CheckIn.aspx.cs" Inherits="van69_Project4_CheckIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div>
        <h1>Welcome to Holiday Inn Express</h1>

        <table>
            <tr>
                <td>
                    <a href="Project4.aspx">
                        <img src="Project4_Buttons/Home_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_CheckIn.aspx">
                        <img src="Project4_Buttons/CheckIn_Select.png" alt="Home" /></a><br />
                    <a href="Project4_NewMember.aspx">
                        <img src="Project4_Buttons/NewMember_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_MemberList.aspx">
                        <img src="Project4_Buttons/MemberList_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_RoomLists.aspx">
                        <img src="Project4_Buttons/RoomList_Unselect.png" alt="Home" /></a><br />
                </td>
                <td>
                    Members:
                    <br />
                    <asp:SqlDataSource ID="sqlMembers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [van69GuestInfoView] ORDER BY [LastName]"></asp:SqlDataSource>
                    <asp:ListBox ID="lstMembers" runat="server" DataSourceID="sqlMembers"
                        DataTextField="FullName" DataValueField="GuestID" Rows="10"></asp:ListBox>

                </td>
                <td>
                    Rooms Avaiable:
                    <br />
                    <asp:SqlDataSource ID="sqlRooms" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [van69RoomAvailView] ORDER BY [RoomNbr]"></asp:SqlDataSource>
                    <asp:ListBox ID="lstRooms" runat="server" DataSourceID="sqlRooms"
                        DataTextField="RoomDesc" DataValueField="RoomNbr" Rows="10"></asp:ListBox>
                </td>
            </tr>

            <tr>
                <td></td>
                <td colspan="2" style="text-align: center">
                    <asp:ImageButton ID="imgBtnCheckIn" runat="server"
                        ImageUrl="Project4_Buttons/CheckIn_Action.png"
                        AlternateText="Check In" OnClick="imgBtnCheckIn_Click">
                    </asp:ImageButton>
                </td>      
            </tr>

        </table>

    </div>
</asp:Content>

