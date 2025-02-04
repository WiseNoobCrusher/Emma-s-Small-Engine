﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="EmmaSmallEngine.Repairs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's Small Engine - Repairs</title>
    <link rel="stylesheet" href="~/css/styles.css" />
</head>
<body class="Font">
        <form id="repairs" runat="server">
            <div>
                <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
            </div>
            <div class="Nav">
                <br style="font-size: small"/>
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <asp:DropDownList runat="server" ID="ddlManagement" CssClass="NavItems" AutoPostBack="True" ViewStateMode="Enabled" Font-Bold="true" style="text-decoration: underline"  OnSelectedIndexChanged="ddlManagement_SelectedIndexChanged">
                    <asp:ListItem>Management</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Orders</asp:ListItem>
                    <asp:ListItem>Deliveries</asp:ListItem>
                    <asp:ListItem>Repairs</asp:ListItem>
                </asp:DropDownList>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>
             <div align="center">
                <label class="Labels">Deliveries:</label><br />
                <br />
                <asp:Table ID="tblRepairs" runat="server" EnableViewState="true" BorderWidth="4px" GridLines="Both" style="padding: 30px 30px" Width="1000px">
                    <asp:TableRow>
                        <asp:TableCell><asp:LinkButton runat="server" href="Repars_Insert.aspx" CommandName="Insert">Create New</asp:LinkButton></asp:TableCell>
                        <asp:TableCell>Order Number</asp:TableCell>
                        <asp:TableCell>Order Date</asp:TableCell>
                        <asp:TableCell>Service Order Date In</asp:TableCell>
                        <asp:TableCell>Service Order Date Out</asp:TableCell>
                        <asp:TableCell>Service Order Issue</asp:TableCell>
                        <asp:TableCell>Service Order Warrenty</asp:TableCell>
                        <asp:TableCell>Service Name</asp:TableCell>
                        <asp:TableCell>Service Description</asp:TableCell>
                        <asp:TableCell>Service Price</asp:TableCell>
                        <asp:TableCell>Order Paid</asp:TableCell>
                        <asp:TableCell>Customer</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
            </div>
    </form>
</body>
</html>
