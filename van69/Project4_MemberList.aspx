<%@ Page Title="Kenneth L. (#69) - Member List" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project4_MemberList.aspx.cs" Inherits="van69_Project4_MemberList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div>
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
                        <img src="Project4_Buttons/MemberList_Select.png" alt="Home" /></a><br />
                    <a href="Project4_RoomLists.aspx">
                        <img src="Project4_Buttons/RoomList_Unselect.png" alt="Home" /></a><br />
                </td>

                <td>
                    <asp:SqlDataSource ID="sqlMembers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' DeleteCommand="DELETE FROM [van69GuestInfo] WHERE [GuestID] = @GuestID" InsertCommand="INSERT INTO [van69GuestInfo] ([GuestID], [FirstName], [LastName], [StreetAddress], [City], [StateAbbr], [ZipCode], [PhoneNbr], [DLNbr], [CCNbr], [NumGuests], [Email]) VALUES (@GuestID, @FirstName, @LastName, @StreetAddress, @City, @StateAbbr, @ZipCode, @PhoneNbr, @DLNbr, @CCNbr, @NumGuests, @Email)" SelectCommand="SELECT * FROM [van69GuestInfo] ORDER BY [GuestID]" UpdateCommand="UPDATE [van69GuestInfo] SET [FirstName] = @FirstName, [LastName] = @LastName, [StreetAddress] = @StreetAddress, [City] = @City, [StateAbbr] = @StateAbbr, [ZipCode] = @ZipCode, [PhoneNbr] = @PhoneNbr, [DLNbr] = @DLNbr, [CCNbr] = @CCNbr, [NumGuests] = @NumGuests, [Email] = @Email WHERE [GuestID] = @GuestID">
                        <DeleteParameters>
                            <asp:Parameter Name="GuestID" Type="String"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="GuestID" Type="String"></asp:Parameter>
                            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="StreetAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="City" Type="String"></asp:Parameter>
                            <asp:Parameter Name="StateAbbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ZipCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="PhoneNbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="DLNbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="CCNbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="NumGuests" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="StreetAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="City" Type="String"></asp:Parameter>
                            <asp:Parameter Name="StateAbbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ZipCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="PhoneNbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="DLNbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="CCNbr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="NumGuests" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                            <asp:Parameter Name="GuestID" Type="String"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="grdMembers" runat="server" DataSourceID="sqlMembers" AutoGenerateColumns="False" DataKeyNames="GuestID" RowStyle-Wrap="False" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="2" HeaderStyle-BorderStyle="Solid" RowStyle-BorderColor="Black" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="2">
                        <Columns>
                            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
                            <asp:BoundField DataField="GuestID" HeaderText="Guest ID" ReadOnly="True" SortExpression="GuestID"></asp:BoundField>
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                            <asp:BoundField DataField="StreetAddress" HeaderText="Address" SortExpression="StreetAddress"></asp:BoundField>
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                            <asp:BoundField DataField="StateAbbr" HeaderText="State" SortExpression="StateAbbr"></asp:BoundField>
                            <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" SortExpression="ZipCode"></asp:BoundField>
                            <asp:BoundField DataField="PhoneNbr" HeaderText="Phone" SortExpression="PhoneNbr"></asp:BoundField>
                            <asp:BoundField DataField="DLNbr" HeaderText="DL#" SortExpression="DLNbr"></asp:BoundField>
                            <asp:BoundField DataField="CCNbr" HeaderText="CC#" SortExpression="CCNbr"></asp:BoundField>
                            <asp:BoundField DataField="NumGuests" HeaderText="Guests #" SortExpression="NumGuests" ItemStyle-Wrap="True"></asp:BoundField>
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                            
                        </Columns>
                    </asp:GridView>
                </td>


            </tr>
        </table>
    </div>
</asp:Content>

