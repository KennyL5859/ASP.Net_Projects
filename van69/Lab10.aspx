<%@ Page Title="Kenneth L. (#69) - Lab #10" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab10.aspx.cs" Inherits="van69_Lab10" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div>
        <h1>Kenneth L. (#69) - Lab #10 Charts</h1>
        <br />
        <br />

        <asp:RadioButton ID="radPieChart" runat="server" Checked="true"
            GroupName="ChartType" Text="Pie Chart" AutoPostBack="true" OnCheckedChanged="radPieChart_CheckedChanged" />
        <br />

        <asp:RadioButton ID="radColumnChart" runat="server" GroupName="ChartType"
            Text="Columnar Chart" Checked="false"
            AutoPostBack="true" OnCheckedChanged="radColumnChart_CheckedChanged" />

        <br />
        <br />

        <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0">
            <asp:View ID="viwPieChart" runat="server">
                <asp:Label ID="lblWards" runat="server" Text="Ward:"></asp:Label>

                <asp:SqlDataSource ID="sqlWards" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [WardOffices] ORDER BY [WardId]"></asp:SqlDataSource>
                <asp:DropDownList ID="ddlWards" runat="server" DataSourceID="sqlWards"
                    DataTextField="WardId" DataValueField="WardId" AutoPostBack="true">
                </asp:DropDownList>

                <asp:SqlDataSource ID="sqlCrimeByWards" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [CrimeTypeByWardView] WHERE ([WardId] = @WardId) ORDER BY [PrimaryType]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlWards" PropertyName="SelectedValue" Name="WardId" Type="Decimal"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>

                <br />
                <br />

                <asp:Chart ID="chtCrimeByWards" runat="server" DataSourceID="sqlCrimeByWards"
                    Height="300" Width="600" BackColor="SkyBlue">
                    <Series>
                        <asp:Series Name="CrimeTypes" XValueMember="PrimaryType" YValueMembers="CrimeCount"
                            ChartType="Pie">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="chaWards" Area3DStyle-Enable3D="true"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </asp:View>


            <asp:View ID="viwBarChart" runat="server">
                <asp:Label ID="lblCrimeTypes" runat="server" Text="Primary crime type:"></asp:Label>
                <asp:SqlDataSource ID="sqlCrimeTypes" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [CrimesPrimaryTypesView] ORDER BY [PrimaryType]"></asp:SqlDataSource>
                <asp:DropDownList ID="ddlCrimeTypes" runat="server" DataSourceID="sqlCrimeTypes"
                     DataTextField="PrimaryType" DataValueField="PrimaryType" AutoPostBack="true">
                </asp:DropDownList>

                <br />
                <br />
                

                <asp:SqlDataSource ID="sqlCrimeByTypes" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [CrimesByWardPerQuarterView] WHERE ([PrimaryType] = @PrimaryType) ORDER BY [WardId]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlCrimeTypes" PropertyName="SelectedValue" Name="PrimaryType" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:Chart ID="chtCrimesByTypes" runat="server" DataSourceID="sqlCrimeByTypes"
                     Height="300" Width="600">
                    <Legends>
                        <asp:Legend Alignment="Center" Docking="Bottom" Name="Default"></asp:Legend>
                    </Legends>
                    <Series>
                        <asp:Series Name="Q1" XValueMember="WardId" YValueMembers="Q1" Color="Blue"></asp:Series>
                        <asp:Series Name="Q2" XValueMember="WardId" YValueMembers="Q2" Color="Yellow"></asp:Series>
                        <asp:Series Name="Q3" XValueMember="WardId" YValueMembers="Q3" Color="Red"></asp:Series>
                        <asp:Series Name="Q4" XValueMember="WardId" YValueMembers="Q4" Color="Green"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="chaCrimeByTypes" Area3DStyle-Enable3D="true"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>


            </asp:View>

        </asp:MultiView>










    </div>
</asp:Content>

