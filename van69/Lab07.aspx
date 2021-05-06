<%@ Page Title="Kenneth L. (#69) - Lab #7" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab07.aspx.cs" Inherits="van69_Lab07" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Lab #7 Zip Code Lookup</h1>
    <br />

    Enter a city and state:
    <br />


    <%-- Text box for city name with validation  --%>
    City:
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="rgvtxtCity" runat="server"         
        ControlToValidate="txtCity"
        CssClass="error"
        SetFocusOnError="true"
        Display="Dynamic"
        ValidationExpression="[A-Za-z][A-Za-z ]*"
        ErrorMessage="City must contain only letters and spaces">
    </asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rqvtxtCity" runat="server" 
         ControlToValidate="txtCity"
         CssClass="error"
         SetFocusOnError="true"
         Display="Dynamic"
         ErrorMessage="City field cannot be empty">

    </asp:RequiredFieldValidator>

    <%-- Drop down list with all 50 states --%>
    <br />
    State:
    <asp:XmlDataSource ID="xmlStates" runat="server" DataFile="Lab07States_KenLin.xml"></asp:XmlDataSource>
    <asp:DropDownList ID="ddlStates" runat="server" DataSourceID="xmlStates"
         DataTextField="text" DataValueField="value"></asp:DropDownList>

    <br /><br />
    <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
    <br /><br />

    <%-- SQL data source with select statement --%>
    <asp:SqlDataSource ID="sqlZipCode" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [ZipCodes] WHERE (([City] LIKE '%' + @City + '%') AND ([StateCode] = @StateCode)) ORDER BY [ZipCode]">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtCity" PropertyName="Text" Name="City" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ddlStates" PropertyName="SelectedValue" Name="StateCode" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <%-- Gridview that displays the filtered city and state --%>
    <asp:GridView ID="grdZipCodes" runat="server" AutoGenerateColumns="False" 
         DataSourceID="sqlZipCode"
         AllowSorting="true"
         AllowPaging="true"
         PageSize="20"
         EmptyDataText="No rows found">
        <Columns>
            <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" SortExpression="ZipCode"></asp:BoundField>
            <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude"></asp:BoundField>
            <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude"></asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
            <asp:BoundField DataField="StateCode" HeaderText="State" SortExpression="StateCode"></asp:BoundField>
            <asp:BoundField DataField="County" HeaderText="County" SortExpression="County"></asp:BoundField>
            <asp:BoundField DataField="ZipType" HeaderText="Zip Type" SortExpression="ZipType"></asp:BoundField>
        </Columns>
    </asp:GridView>

</asp:Content>

