<%@ Page Title="Kenneth L. (#69) New Member" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project4_NewMember.aspx.cs" Inherits="van69_Project4_NewMember" %>


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
                        <img src="Project4_Buttons/NewMember_Select.png" alt="Home" /></a><br />
                    <a href="Project4_MemberList.aspx">
                        <img src="Project4_Buttons/MemberList_Unselect.png" alt="Home" /></a><br />
                    <a href="Project4_RoomLists.aspx">
                        <img src="Project4_Buttons/RoomList_Unselect.png" alt="Home" /></a><br />

                </td>
                <td>
                    <asp:SqlDataSource ID="sqlMembers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
                        InsertCommand="INSERT INTO [van69GuestInfo] ([GuestID], [FirstName], [LastName], [StreetAddress], [City], [StateAbbr], [ZipCode], [PhoneNbr], [DLNbr], [CCNbr], [NumGuests], [Email]) VALUES (@GuestID, @FirstName, @LastName, @StreetAddress, @City, @StateAbbr, @ZipCode, @PhoneNbr, @DLNbr, @CCNbr, @NumGuests, @Email)"
                        SelectCommand="SELECT * FROM [van69GuestInfo] ORDER BY [GuestID]">

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
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="dtvMembers" runat="server" Height="50px" Width="125px"
                        DataSourceID="sqlMembers" AutoGenerateRows="False" DataKeyNames="GuestID"
                        DefaultMode="Insert">
                        <Fields>

                            <asp:CommandField ShowInsertButton="true" />

                            <asp:TemplateField HeaderText="Guest ID" SortExpression="GuestID"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtGuestID" runat="server"
                                        Text='<%# Bind("GuestID") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtGuestID" runat="server"
                                        ErrorMessage="Guest ID is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtGuestID">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtGuestID" runat="server"
                                        ErrorMessage="Guest ID must be exactly 5 digits"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtGuestID"
                                        ValidationExpression="^[0-9]{5}$">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="First Name" SortExpression="FirstName"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtFirstName" runat="server"
                                        Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtFirstName" runat="server"
                                        ErrorMessage="First name is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtFirstName">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtFirstName" runat="server"
                                        ErrorMessage="First name must start with capital letter"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtFirstName"
                                        ValidationExpression="^[A-Z]{1}[a-z]+">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Last Name" SortExpression="LastName"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtLastName" runat="server"
                                        Text='<%# Bind("LastName") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtLastName" runat="server"
                                        ErrorMessage="Last name is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtLastName">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtLastName" runat="server"
                                        ErrorMessage="Last name must start with capital letter"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtLastName"
                                        ValidationExpression="^[A-Z]{1}[a-z]+">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Street" SortExpression="StreetAddress"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtStreet" runat="server"
                                        Text='<%# Bind("StreetAddress") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtStreet" runat="server"
                                        ErrorMessage="Street address is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtStreet">
                                    </asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="City" SortExpression="City"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtCity" runat="server"
                                        Text='<%# Bind("City") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtCity" runat="server"
                                        ErrorMessage="City is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtCity">
                                    </asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="State" SortExpression="StateAbbr"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtState" runat="server"
                                        Text='<%# Bind("StateAbbr") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtState" runat="server"
                                        ErrorMessage="State is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtState">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtState" runat="server"
                                        ErrorMessage="State must be in abbreviation format"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtState"
                                        ValidationExpression="^[A-Z]{2}$">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Zip" SortExpression="ZipCode"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtZip" runat="server"
                                        Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtZip" runat="server"
                                        ErrorMessage="Zip code is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtZip">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtZip" runat="server"
                                        ErrorMessage="Zip code must be exactly 5 digits"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtZip"
                                        ValidationExpression="^[0-9]{5}$">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Phone" SortExpression="PhoneNbr"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtPhone" runat="server"
                                        Text='<%# Bind("PhoneNbr") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtPhone" runat="server"
                                        ErrorMessage="Phone number is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtPhone">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtPhone" runat="server"
                                        ErrorMessage="Phone number must be in ###-###-#### format"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtPhone"
                                        ValidationExpression="^[0-9]{3}-[0-9]{3}-[0-9]{4}$">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="DL#" SortExpression="DLNbr"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtDL" runat="server"
                                        Text='<%# Bind("DLNbr") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtDL" runat="server"
                                        ErrorMessage="DL# is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtDL">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtDL" runat="server"
                                        ErrorMessage="DL number must be in X###-####-#### format"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtDL"
                                        ValidationExpression="^[A-Z]{1}[0-9]{3}-[0-9]{4}-[0-9]{4}$">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="CC#" SortExpression="CCNbr"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtCC" runat="server"
                                        Text='<%# Bind("CCNbr") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtCC" runat="server"
                                        ErrorMessage="CC# is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtCC">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgvtxtCC" runat="server"
                                        ErrorMessage="CC number must be 16 digits long"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtCC"
                                        ValidationExpression="^[0-9]{16}$">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Guests #" SortExpression="NumGuests"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtGuestNum" runat="server"
                                        Text='<%# Bind("NumGuests") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtGuestNum" runat="server"
                                        ErrorMessage="Number of guests is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtGuestNum">
                                    </asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="rgvtxtGuestNum" runat="server" 
                                         ErrorMessage="Number of guests must be between 1 and 6"
                                         CssClass="error"
                                         SetFocusOnError="true"
                                         Display="Dynamic"
                                         Type="Integer"
                                         MinimumValue="1"
                                         MaximumValue="6"
                                         ControlToValidate="txtGuestNum"></asp:RangeValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Email" SortExpression="Email"
                                HeaderStyle-Wrap="False">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtEmail" runat="server"
                                        Text='<%# Bind("Email") %>'></asp:TextBox>                 
                                    <asp:RegularExpressionValidator ID="rgvtxtEmail" runat="server"
                                        ErrorMessage="Email must be in correct format. Ex. jimbrown83@gmail.com"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtEmail"
                                        ValidationExpression="^[0-9?A-z0-9?]+(\.)?[0-9?A-z0-9?]+@[A-z]+\.[A-z]{3}.?[A-z]{0,3}$">
                                    </asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>
                </td>

                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>

