<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo62 (Viewstate).aspx.cs" Inherits="Demos_Demo62__Viewstate_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #62 - Viewstate</h1>
            

            Enter some text:
            <br />
            <asp:TextBox ID="txtText" runat="server" TextMode="MultiLine" 
                Rows="8" Columns="60"></asp:TextBox>
            <br /><br />

            How many times would you like to see that text?
            <asp:TextBox ID="txtTimes" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
            <br /><br />        
        
            <hr />
            <pre><asp:Literal ID="litResults" runat="server"></asp:Literal></pre>  
            <hr />

            <br />
            <br />
        </div>
    </form>
</body>
</html>
