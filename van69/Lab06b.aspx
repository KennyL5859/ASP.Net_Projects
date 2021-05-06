<%@ Page Title="Kenneth L. (#69) - Lab #6b" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab06b.aspx.cs" Inherits="van69_Lab06b" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Lab #3</h1>
    <h1>Electronic Vehicles by Manufacturer</h1>

    <%-- Table for the web contents --%>
    <table>
        <tr>
            <td>
                <h3>Select an auto manufacturer:</h3>
                <br />

                <%-- Listbox for car manufacturers --%>
                <asp:ListBox ID="lstAutoMaker" runat="server"
                    AutoPostBack="true" OnSelectedIndexChanged="lstAutoMaker_SelectedIndexChanged" Rows="10">
                    <asp:ListItem Selected="True" Value="E-Tron 55">Audi</asp:ListItem>
                    <asp:ListItem Value="i3">BMW</asp:ListItem>
                    <asp:ListItem Value="Bolt EV">Chevrolet</asp:ListItem>
                    <asp:ListItem Value="Mustang Mach-E">Ford</asp:ListItem>
                    <asp:ListItem Value="Clarity">Honda</asp:ListItem>
                    <asp:ListItem Value="Kona">Hyundai</asp:ListItem>
                    <asp:ListItem Value="EQC">Mercedes</asp:ListItem>
                    <asp:ListItem Value="EC6">NIO</asp:ListItem>
                    <asp:ListItem Value="Leaf">Nissan</asp:ListItem>
                    <asp:ListItem Value="Model S">Tesla</asp:ListItem>
                </asp:ListBox>
            </td>
            <td>
                <%-- Literal for car make and model --%>
                <h2><asp:Literal ID="litModel" runat="server">Audi E-Tron 55</asp:Literal></h2>
                <br />
                <br />

                <%-- Image of the model --%>
                <asp:Image ID="imgCar" runat="server" ImageUrl="Lab03_Images/Audi.jpg"
                    Width="700" Height="400" AlternateText="Car Image" />
                <br />
                <br />

                <%-- Hyperlink to specific Wikipedia page --%>
                <asp:HyperLink ID="hypEV" runat="server"
                    NavigateUrl="https://en.wikipedia.org/wiki/Audi_e-tron_(2018)">
                    Click here to see Audi E-Tron 55 on Wikipedia</asp:HyperLink>
                <br />
                <br />

                <%-- Image button that redirects to hyperlink page --%>
                <asp:ImageButton ID="imbEV" runat="server"
                    ImageUrl="Lab03_Images/WikipediaLogo.jpg"
                    OnClick="imbEV_Click" AlternateText="Wikipedia Logo" />
            </td>
        </tr>
    </table>
    
</asp:Content>

