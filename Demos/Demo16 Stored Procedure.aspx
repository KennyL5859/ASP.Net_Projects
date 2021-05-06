<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo16 Stored Procedure.aspx.cs" Inherits="Demos_Demo16_Stored_Procedure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo 16 - Stored Procedure</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo 16 - Stored Procedure</h1>
            <br />
            <br />

            Employee ID:
            <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
            <br />

            Last Name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <br />
            <br />
            <br />
            <br />

             <asp:SqlDataSource ID="sqlEmployees" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                DeleteCommand="DELETE FROM [van69Employees] WHERE [EmpId] = @EmpId" 
                InsertCommand="INSERT INTO [van69Employees] ([LastName], [FirstName], [BirthDate], [Ssn], [EmployeeNbr]) VALUES (@LastName, @FirstName, @BirthDate, @Ssn, @EmployeeNbr)" 
                SelectCommand="SELECT * FROM [van69Employees] ORDER BY [LastName], [FirstName]" 
                UpdateCommand="UPDATE [van69Employees] SET [LastName] = @LastName, [FirstName] = @FirstName, [BirthDate] = @BirthDate, [Ssn] = @Ssn, [EmployeeNbr] = @EmployeeNbr WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="BirthDate"></asp:Parameter>
                    <asp:Parameter Name="Ssn" Type="String"></asp:Parameter>
                    <asp:Parameter Name="EmployeeNbr" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="EmployeeNbr" Type="Decimal"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="BirthDate"></asp:Parameter>
                    <asp:Parameter Name="Ssn" Type="String"></asp:Parameter>
                    <asp:Parameter Name="EmployeeNbr" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="EmpId" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="grdEmployees" runat="server"
                DataSourceID="sqlEmployees" AutoGenerateColumns="False" DataKeyNames="EmpId">
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" InsertVisible="False" SortExpression="EmpId"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="Birth Date" SortExpression="BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="Ssn" HeaderText="SSN" SortExpression="Ssn"></asp:BoundField>
                    <asp:BoundField DataField="EmployeeNbr" HeaderText="Employee #" SortExpression="EmployeeNbr"></asp:BoundField>
                </Columns>
            </asp:GridView>




        </div>
    </form>
</body>
</html>
