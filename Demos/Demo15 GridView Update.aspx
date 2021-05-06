<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo15 GridView Update.aspx.cs" Inherits="Demos_Demo15_GridView_Update" %>

<!DOCTYPE html [
    <!ENTITY nbsp "&#160;">
]>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #15 - Gridview with Update</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #15 - Gridview with Update</h1>
            <br />
            <br />

            <asp:SqlDataSource ID="sqlEmployees" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [van69Employees] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>
            <asp:DropDownList ID="ddlEmployees" runat="server" DataSourceID="sqlEmployees"
                 DataTextField="LastName" DataValueField="EmpId"
                 AutoPostBack="true"></asp:DropDownList>

            <br />
            <br />

            <asp:SqlDataSource ID="sqlDependents" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' DeleteCommand="DELETE FROM [van69Dependents] WHERE [EmpId] = @EmpId AND [DependentNbr] = @DependentNbr" InsertCommand="INSERT INTO [van69Dependents] ([EmpId], [DependentNbr], [LastName], [FirstName], [BirthDate], [Ssn]) VALUES (@EmpId, @DependentNbr, @LastName, @FirstName, @BirthDate, @Ssn)" SelectCommand="SELECT * FROM [van69Dependents] WHERE ([EmpId] = @EmpId) ORDER BY [LastName], [FirstName]" UpdateCommand="UPDATE [van69Dependents] SET [LastName] = @LastName, [FirstName] = @FirstName, [BirthDate] = @BirthDate, [Ssn] = @Ssn WHERE [EmpId] = @EmpId AND [DependentNbr] = @DependentNbr">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="DependentNbr" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpId" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="DependentNbr" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="BirthDate"></asp:Parameter>
                    <asp:Parameter Name="Ssn" Type="Decimal"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlEmployees" PropertyName="SelectedValue" Name="EmpId" Type="Decimal"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="BirthDate"></asp:Parameter>
                    <asp:Parameter Name="Ssn" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="EmpId" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="DependentNbr" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdDependents" runat="server" DataSourceID="sqlDependents" AutoGenerateColumns="False" DataKeyNames="EmpId,DependentNbr">
                <Columns>     
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true"/>
                    <asp:BoundField DataField="DependentNbr" HeaderText="Nbr" ReadOnly="True" SortExpression="DependentNbr"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="Birth Date" SortExpression="BirthDate" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                    <asp:BoundField DataField="Ssn" HeaderText="SSN" SortExpression="Ssn"></asp:BoundField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
