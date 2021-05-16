<%@ Page Title="Kenneth L. (#69) - Hotel Check In" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project4.aspx.cs" Inherits="van69_Project4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div>
        <h1>Welcome to Holiday Inn Express</h1>

        <table>
            <tr>
                <td>
                    <a href="Project4.aspx">
                        <img src="Project4_Buttons/Home_Select.png" alt="Home" /></a><br />
                    <a href="Project4_CheckIn.aspx">
                        <img src="Project4_Buttons/CheckIn_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_NewMember.aspx">
                        <img src="Project4_Buttons/NewMember_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_MemberList.aspx">
                        <img src="Project4_Buttons/MemberList_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_RoomLists.aspx">
                        <img src="Project4_Buttons/RoomList_Unselect.png" alt="Home" /></a><br />
                </td>
                <td>
                    <div id="intro">
                        Welcome to the Holiday Inn Express home page. You can navigate <br />
                        to different pages from this page. 
                        <br />
                        <br />
                        <strong>Check-In</strong> page will let you check in a client by selecting the <br />
                        client's name and the room number
                        <br />
                        <br />
                        <strong>New Member</strong> page will let you add new members to the members list.
                        <br />
                        <br />
                        <strong>Member List</strong> page will display a list of current members and what <br />
                        rooms they are checked into.
                        <br />
                        <br />
                        <strong>Room List</strong> page displays the list of rooms in the hotel.

                    </div>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

