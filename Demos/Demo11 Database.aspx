<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo11 Database.aspx.cs" Inherits="Demos_Demo11_Database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #11 - Database Connection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Demo #11 - Database Connection</h1>

            <asp:SqlDataSource ID="sqlStates" runat="server" 
                ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT * FROM [States] ORDER BY [StateFullName]"></asp:SqlDataSource>
            
            <asp:DropDownList ID="ddlStates" runat="server" DataSourceID="sqlStates"
                DataTextField="StateFullName" DataValueField="State" AutoPostBack="true">               
            </asp:DropDownList>

            <br />


            <%-- SQL data source for customers --%>
            <asp:SqlDataSource ID="sqlCustomers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [Customers] WHERE ([State] = @State) ORDER BY [LastName], [FirstName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlStates" PropertyName="SelectedValue" Name="State" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <%-- grid view to show customers --%>
            <asp:GridView ID="grdCustomers" runat="server"
                DataSourceID="sqlCustomers" AutoGenerateColumns="False" 
                AllowSorting="true" AllowPaging="true" PageSize="3"                
                DataKeyNames="CustomerID">
                <PagerSettings Mode="NextPreviousFirstLast" />
                <RowStyle BackColor="#66FFFF" />
                <AlternatingRowStyle BackColor="#FFFF99" />
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="ID" ReadOnly="True" SortExpression="CustomerID"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                    <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" SortExpression="ZipCode"></asp:BoundField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
