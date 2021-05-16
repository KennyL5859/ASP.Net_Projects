<%@ Page Title="Kenneth L. (#69) Room Lists" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project4_RoomLists.aspx.cs" Inherits="van69_Project4_RoomLists" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div>
        <h1>Rooms Available</h1>

        <table>
            <tr>
                <td>
                    <a href="Project4.aspx">
                        <img src="Project4_Buttons/Home_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_CheckIn.aspx">
                        <img src="Project4_Buttons/CheckIn_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_NewMember.aspx">
                        <img src="Project4_Buttons/NewMember_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_MemberList.aspx">
                        <img src="Project4_Buttons/MemberList_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_RoomLists.aspx">
                        <img src="Project4_Buttons/RoomList_Select.png" alt="Home" /></a><br />
                </td>


                <td>
                    <table class="RoomsGrid">
                        <tr>
                            <td runat="server" id="f605">605</td>
                            <td runat="server" id="f620">620</td>
                            <td runat="server" id="f630">630</td>
                            <td runat="server" id="f699">699</td>
                        </tr>
                        <tr>
                            <td runat="server" id="f515">515</td>
                            <td runat="server" id="f525">525</td>
                            <td runat="server" id="f555">555</td>
                            <td runat="server" id="f596">596</td>
                        </tr>
                        <tr>
                            <td runat="server" id="f402">402</td>
                            <td runat="server" id="f409">409</td>
                            <td runat="server" id="f485">485</td>
                            <td runat="server" id="f490">490</td>
                        </tr>
                        <tr>
                            <td runat="server" id="f302">302</td>
                            <td runat="server" id="f305">305</td>
                            <td runat="server" id="f331">331</td>
                            <td runat="server" id="f358">358</td>
                        </tr>
                        <tr>
                            <td runat="server" id="f205">205</td>
                            <td runat="server" id="f211">211</td>
                            <td runat="server" id="f255">255</td>
                            <td runat="server" id="f269">269</td>
                        </tr>
                        <tr>
                            <td runat="server" id="f101">101</td>
                            <td runat="server" id="f110">110</td>
                            <td runat="server" id="f115">115</td>
                            <td runat="server" id="f165">165</td>
                        </tr>
                    </table>
                </td>
            </tr>


        </table>

    </div>
</asp:Content>

