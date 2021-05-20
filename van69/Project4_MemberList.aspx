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
                            <asp:TemplateField HeaderText="Guest ID" SortExpression="GuestID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtGuestID" runat="server" Text='<%# Eval("GuestID") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblGuest" runat="server" Text='<%# Bind("GuestID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Address" SortExpression="StreetAddress">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtStreet" runat="server" Text='<%# Bind("StreetAddress") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtStreet" runat="server"
                                        ErrorMessage="Street address is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtStreet">
                                    </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblStreet" runat="server" Text='<%# Bind("StreetAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="City" SortExpression="City">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvtxtCity" runat="server"
                                        ErrorMessage="City is required"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtCity">
                                    </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="State" SortExpression="StateAbbr">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtState" runat="server" Text='<%# Bind("StateAbbr") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblState" runat="server" Text='<%# Bind("StateAbbr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Zip Code" SortExpression="ZipCode">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtZip" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblZip" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Phone" SortExpression="PhoneNbr">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("PhoneNbr") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblPhone" runat="server" Text='<%# Bind("PhoneNbr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="DL#" SortExpression="DLNbr">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDL" runat="server" Text='<%# Bind("DLNbr") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblDL" runat="server" Text='<%# Bind("DLNbr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="CC#" SortExpression="CCNbr">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCC" runat="server" Text='<%# Bind("CCNbr") %>'></asp:TextBox>
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
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblCC" runat="server" Text='<%# Bind("CCNbr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Guests #" SortExpression="NumGuests">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtGuestNum" runat="server" Text='<%# Bind("NumGuests") %>'></asp:TextBox>
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
                                        ControlToValidate="txtGuestNum">
                                    </asp:RangeValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblGuestNum" runat="server" Text='<%# Bind("NumGuests") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="True" />
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="rgvtxtEmail" runat="server"
                                        ErrorMessage="Email must be in correct format. Ex. jimbrown83@gmail.com"
                                        CssClass="error"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        ControlToValidate="txtEmail"
                                        ValidationExpression="^[0-9?A-z0-9?]+(\.)?[0-9?A-z0-9?]+@[A-z]+\.[A-z]{3}.?[A-z]{0,3}$">
                                    </asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                        <HeaderStyle BorderColor="Black" BorderWidth="2px" BorderStyle="Solid"></HeaderStyle>

                        <RowStyle Wrap="False" BorderColor="Black" BorderWidth="2px" BorderStyle="Solid"></RowStyle>
                    </asp:GridView>

                </td>


            </tr>
        </table>
    </div>
</asp:Content>

