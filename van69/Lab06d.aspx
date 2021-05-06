<%@ Page Title="Kenneth L. (#69) - Lab #6d" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab06d.aspx.cs" Inherits="van69_Lab06d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Lab #6d Mortgage Calculator</h1>
    <br />


    <table>
        <%-- Row with priciple label and textbox --%>
        <tr>
            <td>Principal Amount:</td>
            <td>
                <asp:TextBox ID="txtPrincipal" runat="server" />
            </td>

            <td>
                <asp:RequiredFieldValidator ID="rqvtxtPrincipal" runat="server"
                    ControlToValidate="txtPrincipal"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="Principal amount is required">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtPrincipal" runat="server"
                    ControlToValidate="txtPrincipal"
                    CssClass="error"
                    SetFocusOnErro="true"
                    MinimumValue="50000"
                    MaximumValue="10000000"
                    Display="Dynamic"
                    Type="Double"
                    ErrorMessage="Principal must be between 50,000 and 10,000,000">
                </asp:RangeValidator>
            </td>
        </tr>

        <%-- Row with interest rate label and textbox --%>
        <tr>
            <td>Annual Interest Rate:</td>
            <td><asp:TextBox ID="txtIntRate" runat="server" /></td>
            <td>               
                <asp:RequiredFieldValidator ID="rqvtxtIntRate" runat="server"
                    ControlToValidate="txtIntRate"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="Interest rate is required">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- Row with mortgage length label and textbox --%>
        <tr>
            <td>Mortgage Length:</td>
            <td>
                <asp:TextBox ID="txtPeriods" runat="server" />
                <asp:Literal ID="litPeriod" runat="server">years</asp:Literal>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rqvtxtPeriods" runat="server"
                    ControlToValidate="txtPeriods"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="Mortgage length is required">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtPeriods" runat="server"
                    ControlToValidate="txtPeriods"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    Type="Integer"
                    MinimumValue="1"
                    MaximumValue="99"
                    ErrorMessage="Mortgage length must be between 1 and 99 years">
                </asp:RangeValidator>
            </td>
        </tr>

        <%-- Row with Property value label and textbox --%>
        <tr>
            <td>
                <br />                
                Property value:
            </td>
            <td>
                <br />
                <asp:TextBox ID="txtValue" runat="server"  />
            </td>
            <td>
                <br /> 
                <asp:CompareValidator ID="cmvtxtValue" runat="server"
                    ControlToValidate="txtValue"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    Type="Double"
                    Operator="GreaterThanEqual"
                    ControlToCompare="txtPrincipal"
                    ErrorMessage="Property value must be greater than or equal to principal amount">
                </asp:CompareValidator>      
            </td>
        </tr>

        <%-- Row that displays two radio buttons for years and months --%>
        <tr>
            <td colspan="3">
                <asp:RadioButtonList ID="rblPeriod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblPeriod_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Value="years">Years</asp:ListItem>
                    <asp:ListItem Value="months">Months</asp:ListItem>
                </asp:RadioButtonList>
            </td>     
        </tr>

        <%-- Row with calculate button centered --%>
        <tr>
            <td colspan="3" style="text-align: center">
                <br />
                <asp:Button ID="btnCompute" runat="server" Text="Compute Monthly Payment" OnClick="btnCompute_Click" />
            </td>
        </tr>

        <%-- Row with results centered --%>
        <tr>
            <td colspan="3" style="text-align: center">  
                <br />             
                <strong>
                    <asp:Literal ID="litResult" runat="server" />
                </strong>
            </td>     
        </tr>
    </table>    

</asp:Content>

