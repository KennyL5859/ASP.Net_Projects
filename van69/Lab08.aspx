<%@ Page Title="Kenneth L. (#69) - Lab #8" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab08.aspx.cs" Inherits="van69_Lab08" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Lab #8 Message Board</h1>
    <br />
    <br />

    <table>
        <tr>
            <td>Your Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvtxtName" runat="server"
                    Text="*"
                    ErrorMessage="You must enter your name"
                    ControlToValidate="txtName"
                    CssClass="error"
                    SetFocusOnError="true"                   
                    Display="Dynamic">                
                </asp:RequiredFieldValidator>
            </td>        
        </tr>
        <tr>
            <td>Message:</td>
            <td>
                <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvtxtMessage" runat="server"
                    Text="*"
                    ErrorMessage="You must enter a message"
                    ControlToValidate="txtMessage"
                    CssClass="error"
                    SetFocusOnError="true"                    
                    Display="Dynamic">                    
                </asp:RequiredFieldValidator>
            </td>
            <asp:ValidationSummary ID="vlsSummary" runat="server"
                ShowMessageBox="true" ShowSummary="false"/>
        </tr>
        <tr>
            <td colspan="2">
                <asp:LinkButton ID="lkbSend" runat="server" OnClick="lkbSend_Click">Send</asp:LinkButton>
                <asp:LinkButton ID="lkbCancel" runat="server" OnClick="lkbCancel_Click">Cancel</asp:LinkButton>
            </td>
        </tr>
    </table>


    <br />
    <br />

    Search:
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:LinkButton ID="lkbGo" runat="server" OnClick="lkbGo_Click"
         CausesValidation="false">Go</asp:LinkButton>
    <asp:LinkButton ID="lkbClear" runat="server" OnClick="lkbClear_Click"
         CausesValidation="false">Clear</asp:LinkButton>
    <br />
    <br />

    <asp:SqlDataSource ID="sqlMessages" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
        DeleteCommand="DELETE FROM [van69Messages] WHERE [MessageID] = @MessageID" 
        InsertCommand="INSERT INTO [van69Messages] ([Name], [MessageText], [MessageDate]) VALUES (@Name, @MessageText, @MessageDate)" 
        SelectCommand="SELECT [MessageID], [Name], [MessageText], [MessageDate] FROM [van69Messages] ORDER BY [MessageID] DESC" 
        UpdateCommand="UPDATE [van69Messages] SET [Name] = @Name, [MessageText] = @MessageText, [MessageDate] = @MessageDate WHERE [MessageID] = @MessageID">
        <DeleteParameters>
            <asp:Parameter Name="MessageID" Type="Decimal"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="MessageText" Type="String"></asp:Parameter>
            <asp:Parameter Name="MessageDate" Type="DateTime"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="MessageText" Type="String"></asp:Parameter>
            <asp:Parameter Name="MessageDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="MessageID" Type="Decimal"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="grdMessages" runat="server"
        DataSourceID="sqlMessages" AllowPaging="True"
        AutoGenerateColumns="false" DataKeyNames="MessageID"
        PageSize="20" AllowSorting="true" OnPageIndexChanged="grdMessages_PageIndexChanged">
        <Columns>
            <asp:BoundField DataField="MessageID" HeaderText="MessageID" ReadOnly="True" SortExpression="MessageID" InsertVisible="False"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
            <asp:BoundField DataField="MessageText" HeaderText="MessageText" SortExpression="MessageText"></asp:BoundField>
            <asp:BoundField DataField="MessageDate" HeaderText="MessageDate" SortExpression="MessageDate"></asp:BoundField>
        </Columns>
    </asp:GridView>

    


</asp:Content>

