<%@ Page Title="Kenneth L. (#69) - Project #2" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project2.aspx.cs" Inherits="van69_Project2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">

    <h1>Kenneth L. (#69) - Project #2 Chicago Crimes</h1>
    <br />
    <br />   

    <%-- table with 2 columns and 3 rows --%>
    <table>
        <tr>
            <td>Primary crime type:</td>
            <td>
                <%-- drop down list that displays all primary crime types --%>
                <asp:SqlDataSource ID="sqlPrimary" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                    SelectCommand="SELECT * FROM [CrimesPrimaryTypesView] ORDER BY [PrimaryType]"></asp:SqlDataSource>
                <asp:DropDownList ID="ddlPrimary" runat="server"
                     DataSourceID="sqlPrimary" DataTextField="PrimaryType" 
                     OnSelectedIndexChanged="ddlPrimary_SelectedIndexChanged"
                     AutoPostBack="true"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Secondary crime type:</td>
            <td>
                <%-- drop down lists that displays secondary crime types --%>
                <asp:SqlDataSource ID="sqlSecondary" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                    SelectCommand="SELECT * FROM [CrimesSecondaryTypesView] WHERE ([PrimaryType] = @PrimaryType) ORDER BY [CrimeDesc]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlPrimary" PropertyName="SelectedValue" Name="PrimaryType" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DropDownList ID="ddlSecondary" runat="server"
                     DataSourceID="sqlSecondary" DataTextField="CrimeDesc"
                     AutoPostBack="true" DataValueField="Iucr"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Ward:</td>
            <td>
                <%-- drop down list that displays all the wards --%>
                <asp:SqlDataSource ID="sqlWards" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                     SelectCommand="SELECT * FROM [CrimesWardsView] WHERE ([Iucr] = @Iucr) ORDER BY [WardId]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSecondary" PropertyName="SelectedValue" Name="Iucr" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DropDownList ID="ddlWards" runat="server"
                     DataSourceID="sqlWards" DataTextField="WardDesc"
                     DataValueField="WardId" AutoPostBack="true"></asp:DropDownList>
            </td>
        </tr>
    </table>

    <br />
    <br />

    <asp:SqlDataSource ID="sqlCrimes" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [CaseNumber], [CrimeDt], [CrimeBlock], [Iucr], [ArrestedYN], [DomesticYN], [DistrictNum], [Beat], [FbiCode], [Latitude], [Longitude] FROM [Crimes] WHERE (([Iucr] = @Iucr) AND ([WardId] = @WardId)) ORDER BY [CrimeDt]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSecondary" PropertyName="SelectedValue" Name="Iucr" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ddlWards" PropertyName="SelectedValue" Name="WardId" Type="Decimal"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="grdCrimes" runat="server"
        DataSourceID="sqlCrimes" AutoGenerateColumns="False" DataKeyNames="CaseNumber"
        AllowPaging="true" AllowSorting="true" PageSize="25">
        <Columns>
            <asp:BoundField DataField="CaseNumber" HeaderText="Case #" ReadOnly="True" SortExpression="CaseNumber"></asp:BoundField>
            <asp:BoundField DataField="CrimeDt" HeaderText="Date" SortExpression="CrimeDt"></asp:BoundField>
            <asp:BoundField DataField="CrimeBlock" HeaderText="Block" SortExpression="CrimeBlock"></asp:BoundField>
            <asp:BoundField DataField="Iucr" HeaderText="IUCR" SortExpression="Iucr"></asp:BoundField>       
            <asp:BoundField DataField="ArrestedYN" HeaderText="Arr" SortExpression="ArrestedYN"></asp:BoundField>
            <asp:BoundField DataField="DomesticYN" HeaderText="Dom" SortExpression="DomesticYN"></asp:BoundField>
            <asp:BoundField DataField="DistrictNum" HeaderText="Dist" SortExpression="DistrictNum"></asp:BoundField>        
            <asp:BoundField DataField="Beat" HeaderText="Beat" SortExpression="Beat"></asp:BoundField>
            <asp:BoundField DataField="FbiCode" HeaderText="FBI" SortExpression="FbiCode"></asp:BoundField>
            <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude"></asp:BoundField>
            <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude"></asp:BoundField>
        </Columns>
    </asp:GridView>

</asp:Content>

