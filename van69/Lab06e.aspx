<%@ Page Title="Kenneth L. (#69) - Lab #6e" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab06e.aspx.cs" Inherits="van69_Lab06e" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <h1>Kenneth L. (#69) - Lab #6e Mileage Calculator</h1>
    <br />

    <%-- table with 4 columns and 6 rows of contents --%>
    <table>

        <%-- Row with current odometer label and textbox --%>
        <tr>
            <td>Current Odometer Reading</td>
            <td>
                <asp:TextBox ID="txtCurrentOdo" runat="server" Columns="10" />
            </td>
            <td>Miles</td>
            <td>
                <asp:RequiredFieldValidator ID="rqvtxtCurrentOdo" runat="server"
                    ControlToValidate="txtCurrentOdo"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="You must fill  in the current odometer field">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtCurrentOdo" runat="server"
                    ControlToValidate="txtCurrentOdo"
                    CssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="1"
                    MaximumValue="200000"
                    Display="Dynamic"
                    Type="Integer"
                    ErrorMessage="The current odometer must be a whole number between 1 and 200,000">
                </asp:RangeValidator>
            </td>
        </tr>

        <%-- Row with previous odometer label and textbox --%>
        <tr>
            <td>Previous Odometer Reading</td>
            <td>
                <asp:TextBox ID="txtPreviousOdo" runat="server" Columns="10" />
            </td>
            <td>Miles</td>
            <td>
                <asp:RequiredFieldValidator ID="rqvtxtPreviousOdo" runat="server"
                    ControlToValidate="txtPreviousOdo"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="You must fill  in the previous odometer field">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtPreviousOdo" runat="server"
                    ControlToValidate="txtPreviousOdo"
                    CssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="1"
                    MaximumValue="200000"
                    Display="Dynamic"
                    Type="Integer"
                    ErrorMessage="The previous odometer must be a whole number between 1 and 200,000">
                </asp:RangeValidator>

                <asp:CompareValidator ID="cmvtxtPreviousOdo" runat="server" 
                    ControltoValidate="txtPreviousOdo"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    Type="Integer"
                    Operator="LessThan"
                    ControlToCompare="txtCurrentOdo"
                    ErrorMessage="Previous odometer must be less than the current odometer">
                </asp:CompareValidator>
            </td>
        </tr>

        <%-- Row with gas added label and textbox --%>
        <tr>
            <td>Gas Added to the Tank</td>
            <td>
                <asp:TextBox ID="txtGasAdded" runat="server" Columns="10" />
            </td>
            <td>Gallons</td>
            <td>
                <asp:RequiredFieldValidator ID="rqvtxtGasAdded" runat="server"
                    ControlToValidate="txtGasAdded"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="You must fill  in the gallons added field">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtGasAdded" runat="server"
                    ControlToValidate="txtGasAdded"
                    CssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="1"
                    MaximumValue="50"
                    Display="Dynamic"
                    Type="Double"
                    ErrorMessage="The number of gallons added must be between 1 and 50">
                </asp:RangeValidator>
            </td>
        </tr>

        <%-- Row with gas price label and textbox --%>
        <tr>
            <td>Gas Price</td>
            <td>
                <asp:TextBox ID="txtGasPrice" runat="server" Columns="10" />
            </td>
            <td>$/gallon</td>
            <td>
                <asp:RequiredFieldValidator ID="rqvtxtGasPrice" runat="server"
                    ControlToValidate="txtGasPrice"
                    CssClass="error"
                    SetFocusOnError="true"
                    Display="Dynamic"
                    ErrorMessage="You must fill in the price per gallon field">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtGasPrice" runat="server"
                    ControlToValidate="txtGasPrice"
                    CssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="1"
                    MaximumValue="10"
                    Display="Dynamic"
                    Type="Double"
                    ErrorMessage="The price per gallon must be between 1 and 10">
                </asp:RangeValidator>
            </td>
        </tr>

        <%-- Row with calculate link button --%>
        <tr>
            <td></td>
            <td>
                <br />
                <asp:LinkButton ID="lkbCalculate" runat="server"
                    CssClass="linkBtn" OnClick="lkbCalculate_Click">Calculate
                </asp:LinkButton>
            </td>
            <td></td>
            <td></td>
        </tr>

        <%-- Row with 4 results on separate line --%>
        <tr>            
            <td colspan="4" style="text-align: center">
                <br />
                <asp:Literal ID="litMilesPerGallon" runat="server" />
                <br />
                <asp:Literal ID="litFillExpense" runat="server"></asp:Literal>
                <br />
                <asp:Literal ID="litMilesTraveled" runat="server"></asp:Literal>
                <br />
                <asp:Literal ID="litCostPerMile" runat="server"></asp:Literal>
            </td> 
        </tr>
    </table>

</asp:Content>

