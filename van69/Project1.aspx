<%@ Page Title="Kenneth L. (#69) - Project #1" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Project1.aspx.cs" Inherits="van69_Project1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Project #1 Temp. Conversion</h1>

    <%-- Table with 6 rows and 2 columns --%>
    <table>
        <%-- 1st row with starting temp label, textbox, and validation --%>
        <tr>
            <td>Starting temp:</td>
            <td>
                <asp:TextBox ID="txtStartingTemp" runat="server" Columns="5" />

                <asp:RequiredFieldValidator ID="rqvtxtStartingTemp" runat="server"
                    ControlToValidate="txtStartingTemp"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="You must enter a starting temperature">                     
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rgvtxtStartingTemp" runat="server"
                    ControlToValidate="txtStartingTemp"
                    CssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="-50"
                    MaximumValue="200"
                    Type="Double"
                    Display="Dynamic"
                    ErrorMessage="The starting temperature must be between -50 and 200.">
                </asp:RangeValidator>
            </td>
        </tr>

        <%-- 2nd row with ending temp label, textbox, and validation --%>
        <tr>
            <td>Ending temp:</td>
            <td>
                <asp:TextBox ID="txtEndingTemp" runat="server" Columns="5" />

                <asp:RequiredFieldValidator ID="rqvtxtEndingTemp" runat="server"
                    ControlToValidate="txtEndingTemp"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="You must enter a ending temperature">                     
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rgvtxtEndingTemp" runat="server"
                    ControlToValidate="txtEndingTemp"
                    CssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="-50"
                    MaximumValue="200"
                    Type="Double"
                    Display="Dynamic"
                    ErrorMessage="The ending temperature must be between -50 and 200.">
                </asp:RangeValidator>
                <asp:CompareValidator ID="cmvtxtEndingTemp" runat="server"
                    ControlToValidate="txtEndingTemp"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    Type="Double"
                    Operator="GreaterThanEqual"
                    ControlToCompare="txtStartingTemp"
                    ErrorMessage="The ending temperature must be greater than starting temperature">
                </asp:CompareValidator>
            </td>
        </tr>

        <%-- 3rd row with increment label, textbox, and validation --%>
        <tr>
            <td>Increment by:</td>
            <td>
                <asp:TextBox ID="txtIncrement" runat="server" Columns="5" />
                <asp:RangeValidator ID="rgvtxtIncrement" runat="server"
                    ControlToValidate="txtIncrement"
                    CssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="0.0001"
                    MaximumValue="10"
                    Type="Double"
                    Display="Dynamic"
                    ErrorMessage="The increment amount must be more than 0 and less than 10.">
                </asp:RangeValidator>
            </td>
        </tr>

        <%-- 4th row with radio button lists for conversion direction --%>
        <tr>
            <td></td>
            <td>
                <asp:RadioButtonList ID="rblTempConvert" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblTempConvert_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Celsius to Fahrenheit</asp:ListItem>
                    <asp:ListItem>Fahrenheit to Celsius</asp:ListItem>
                </asp:RadioButtonList>
            </td>    
        </tr>

        <%-- 5th row with a button to generate results --%>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnGenerate" runat="server" Text="Generate" OnClick="btnGenerate_Click" />
            </td> 
        </tr>

        <%-- 6th row that displays results in a pre tag --%>
        <tr>
            <td colspan="2" style="padding: 5px 10px 0px 10px">
                <br />
                <pre><asp:Literal ID="litResults" runat="server"></asp:Literal></pre>                
            </td>       
        </tr>
    </table>

</asp:Content>

