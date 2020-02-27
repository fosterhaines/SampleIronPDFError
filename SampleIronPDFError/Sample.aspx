<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample.aspx.cs" Inherits="SampleIronPDFError.Sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: black; color: white;">
                    <div>INVOICE</div>
                </div>
                <label id="invoiceNumberLabel" style="float: left; font-weight: bold;" runat="server">Invoice Number:</label>
                <asp:label runat="server" id="invoiceNumber" style="float: left;" Text="<%# _Invoice.InvoiceNumber %>"></asp:label>
                <asp:label runat="server" style="float: right" id="invoiceDate" Text="<%# _Invoice.InvoiceDate %>"></asp:label>
                <label id="invoiceDateLabel" style="float: right;font-weight: bolder">Invoice Date: </label>
                <br />
                <label id="poLabel" runat="server" style="float: left;font-weight: bold">PO Number: </label>
                <asp:label runat="server" style="float: right" id="poDate" Text="<%# _Invoice.PODate %>"></asp:label>
                <label id="poDateLabel" runat="server" style="float: right;font-weight: bolder">PO Date: </label>
                <br />
                <label id="packingListLabel" runat="server" style="float: left">PACKING LIST NUMBER: </label>
                <asp:label runat="server" id="packingListNumber" Text="<%# _Invoice.PackingListNumber %>"></asp:label>
                <br />
                <br />
                <label id="shipToLabel" runat="server" style="float: left;font-weight: bold">SHIP TO</label>
                <br />
                <asp:label runat="server" id="shipTo" style="float: left;" Text="<%# _Invoice.ShipTo %>"></asp:label>
                <br />
    </form>
</body>
</html>
