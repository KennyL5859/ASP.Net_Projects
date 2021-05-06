<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo46 ReponseWrite.aspx.cs" Inherits="Demos_Demo46_ReponseWrite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #46 - Response Write()</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #46 - Response.Write</h1>
            <br />
            <br />

            <%-- This is an asp.net comment --%>
            
            <%
                int a;
                int b;
                int c;

                a = 7;
                b = 3;
                c = a * b;

                if (c > 10)
                {
                    Response.Write("<strong>" + c + "</strong>");
                }
            %>

            <table>
                <% 
                    for (int counter = 0; counter < 10; counter++)
                    {
                %>
                <tr>
                    <td>
                        Row:
                    </td>
                    <td>
                        <% Response.Write(counter);%>
                    </td>
                </tr>
                <% }%>
            </table>

            

        </div>
    </form>
</body>
</html>
