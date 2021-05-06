<%@ Page Title="Kenneth L. (#69) - Lab #9" Language="C#" MasterPageFile="van69.master" AutoEventWireup="true" CodeFile="Lab09.aspx.cs" Inherits="van69_Lab09" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="Server">
    <style type="text/css">
        table {
            border-width: 1px;
            border-spacing: 0px;
            border-style: outset;
            border-color: #cccccc;
            border-collapse: separate;
            background-color: #dfeced;
        }

            table td {
                border-width: thin;
                padding: 5px;
                border-style: inset;
                border-color: #cccccc;
            }

            table th {
                border-width: 1px;
                border-spacing: 0px;
                padding: 5px;
                border-style: inset;
                border-color: #444444;
                background-color: #e1d5bd;
                font-size: 18px;
            }

            table img {
                height: 100px;
                width: 150px;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">

    <div>
        <h1>Kenneth L. (#69) - Lab #9 XSLT</h1>
        <br />
        <br />

        <asp:Xml ID="xmlCars" runat="server"
             DocumentSource="Lab09.xml"
             TransformSource="Lab09.xslt">
        </asp:Xml>

    </div>
</asp:Content>

