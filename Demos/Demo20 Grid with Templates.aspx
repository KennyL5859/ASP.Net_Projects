<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo20 Grid with Templates.aspx.cs" Inherits="Demos_Demo20_Grid_with_Templates" %>

<!DOCTYPE html [
    <!ENTITY nbsp "&#160;">
]>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #20 - Grid With Templates</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #20 - Grid With Templates</h1>
            <br />
            <br />

            <asp:SqlDataSource ID="sqlBooks" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
                SelectCommand="SELECT * FROM [van69Books] ORDER BY [BookID]"
                UpdateCommand="UPDATE [van69Books] SET [Rating] = @Rating, [Comments] = @Comments WHERE [BookID] = @BookID">
                
                <UpdateParameters>
                    <asp:Parameter Name="BookTitle" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ISBN" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PublishedDate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="Author" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ImageURL" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Rating" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Comments" Type="String"></asp:Parameter>
                    <asp:Parameter Name="BookID" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdBooks" runat="server" DataSourceID="sqlBooks" AutoGenerateColumns="False" DataKeyNames="BookID" OnRowCommand="grdBooks_RowCommand">
                <Columns>                       
                    <asp:BoundField DataField="BookTitle" HeaderText="Title" SortExpression="BookTitle" ReadOnly="true"></asp:BoundField>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" ReadOnly="true"></asp:BoundField>
                    <asp:BoundField DataField="PublishedDate" HeaderText="Published" SortExpression="PublishedDate" ReadOnly="true"></asp:BoundField>
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" ReadOnly="true"></asp:BoundField>
                
                    <asp:ImageField DataImageUrlField="ImageURL" ReadOnly="True" ShowHeader="False"
                        ControlStyle-Height="75px" NullDisplayText="No Image Available"
                        NullImageUrl="images/notavailable.jpg" ItemStyle-HorizontalAlign="Center"
                        AlternateText="Book Cover" HeaderText="&#160;">
                        <ControlStyle Height="75px"></ControlStyle>
                    </asp:ImageField>
                    <asp:TemplateField HeaderText="Rating">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlRating" runat="server" Text='<%# Bind("Rating") %>'>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem Value="">None</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblRating" runat="server" Text='<%# Bind("Rating") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                  
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments"></asp:BoundField>

                    <asp:HyperLinkField DataNavigateUrlFormatString="http://www.isbn.nu/{0}" DataNavigateUrlFields="ISBN" 
                         Text="Buy" HeaderText="&#160;"/>

                    <asp:ButtonField Text="Sell" CommandName="Sell" HeaderText="&#160;"/>
                    <asp:ButtonField Text="Library" CommandName="Library" HeaderText="&#160;"/>
                    <asp:ButtonField Text="Search" CommandName="Search" HeaderText="&#160;"/>
                    <asp:CommandField ShowEditButton="true" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
