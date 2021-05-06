<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo67 Chart (ZipCodes).aspx.cs" Inherits="Demos_Demo67_Chart__ZipCodes_" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #67 - Chart Zip Codes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #67 - Chart Zip Codes</h1>
            <br />
            <br />

            <asp:SqlDataSource ID="sqlStates" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [States] ORDER BY [StateFullName]"></asp:SqlDataSource>
            <asp:DropDownList ID="ddlStates" runat="server" DataSourceID="sqlStates" AutoPostBack="true" 
                 DataTextField="StateFullName" DataValueField="State"></asp:DropDownList>
            <br />
            <br />

            <asp:SqlDataSource ID="sqlCounties" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [ZipCodesCountiesView] WHERE ([StateCode] = @StateCode) ORDER BY [County]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlStates" PropertyName="SelectedValue" Name="StateCode" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <hr />
            <asp:Chart ID="chtCountiesColumn" runat="server" DataSourceID="sqlCounties" Width="800"
                 BackColor="0, 64, 64" Height="500" BackGradientStyle="DiagonalLeft">
                <Legends>
                    <asp:Legend Alignment="Center" Docking="Bottom" Name="Default"
                         LegendStyle="Row">

                    </asp:Legend>
                </Legends>
                <Series>
                    <asp:Series Name="Zip Codes" XValueMember="County" YValueMembers="Zips" Color="Green"></asp:Series>
                    <asp:Series Name="Counties" XValueMember="County" YValueMembers="Cities" Color="LightBlue"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="chaCounties1" Area3DStyle-Enable3D="true"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

            <br />
            <br />

            <asp:Chart ID="chkCountiesPie" runat="server" DataSourceID="sqlCounties" Height="600"
                 Width="800">
                <Series>
                    <asp:Series Name="zips" XValueMember="County" YValueMembers="Zips" ChartType="Pie"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="chaCounties2" Area3DStyle-Enable3D="true"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

            
            <asp:GridView ID="grdCounties" runat="server" DataSourceID="sqlCounties" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode"></asp:BoundField>
                    <asp:BoundField DataField="County" HeaderText="County" SortExpression="County"></asp:BoundField>
                    <asp:BoundField DataField="Zips" HeaderText="Zips" SortExpression="Zips"></asp:BoundField>
                    <asp:BoundField DataField="Cities" HeaderText="Cities" SortExpression="Cities"></asp:BoundField>
                    <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude"></asp:BoundField>
                    <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude"></asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
