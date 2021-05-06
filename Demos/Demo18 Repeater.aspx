<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo18 Repeater.aspx.cs" Inherits="Demos_Demo18_Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo 18 - Repeater Control</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        table {
            border-width: 1px;
            border-spacing: 0px;
            border-style: outset;
            border-color: #cccccc;
            border-collapse: separate;
            background-color: #ffffff;
        }

        table th {
            border-width: 1px;
            border-spacing: 0px;
            padding: 3px;
            border-style: inset;
            border-color: #444444;
            background-color: #e1d5bd;
        }

        table td {
            border-width: thin;
            padding: 3px;
            border-style: inset;
            border-color: #cccccc;
        }

        table tr.alt {
            background-color: #e1d5db;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo 18 - Repeater Control</h1>
            <br />
            <br />

            Last name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" />
            <br />
            <br />


            <asp:SqlDataSource ID="sqlEmployees" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
                SelectCommand="SELECT * FROM [van69Employees] WHERE ([LastName] LIKE '%' + @LastName + '%') ORDER BY [LastName], [FirstName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtLastName" PropertyName="Text" Name="LastName" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:Repeater ID="rptEmployees" runat="server" DataSourceID="sqlEmployees">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Birth Date</th>
                        </tr>                
                </HeaderTemplate>
                <ItemTemplate>
                            <tr>
                                <td><%# DataBinder.Eval(Container.DataItem, "EmpId") %></td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "LastName") %>,
                                    <%# DataBinder.Eval(Container.DataItem, "FirstName") %>
                                </td>
                                <td><%# DataBinder.Eval(Container.DataItem, "BirthDate", "{0:M/d/yyyy}") %></td>
                            </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                            <tr class="alt">
                                <td><%# DataBinder.Eval(Container.DataItem, "EmpId") %></td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "LastName") %>,
                                            <%# DataBinder.Eval(Container.DataItem, "FirstName") %>
                                </td>
                                <td><%# DataBinder.Eval(Container.DataItem, "BirthDate", "{0:M/d/yyyy}") %></td>
                            </tr>
                </AlternatingItemTemplate>
                <FooterTemplate>
                        </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
