<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo14 Details Viiew.aspx.cs" Inherits="Demos_Demo14_Details_Viiew" %>

<!DOCTYPE html [
    <!ENTITY nbsp "&#160;">
    <!ENTITY copyrightyear "2021">
]>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo 14 - Details View Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo 14 - Details View Control</h1>
            <br />
            <br />

            &copyrightyear;
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


            <%-- this is the details view control --%>
            <asp:DetailsView ID="dtvEmployees" runat="server"
                Height="50px"
                Width="350px"
                DataSourceID="sqlEmployees" 
                AutoGenerateRows="False" 
                DataKeyNames="EmpId"
                AllowPaging="true">
                <PagerSettings Mode="NextPreviousFirstLast" />
                <Fields>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" InsertVisible="False" SortExpression="EmpId"></asp:BoundField>                     
                    <asp:BoundField DataField="EmployeeNbr" HeaderText="Number" SortExpression="EmployeeNbr"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="Birth Date" SortExpression="BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="Ssn" HeaderText="Ssn" SortExpression="SSN"></asp:BoundField>                   
                    <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" ShowInsertButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
