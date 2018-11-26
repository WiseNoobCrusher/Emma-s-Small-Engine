﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalAssignment.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Home</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>
    <body class="Font">
        <form id="home" runat="server">
            <div class="Banner">
                <asp:Image ID="logo" runat="server" ImageUrl="~/img/logo.png" Width="225px" style="text-align: left" /><br />
                <span>Emma&#39;s Small Engine</span><br />
            </div>
            <div class="Nav">
                <br />
                <a class="NavItems" href="Home.aspx" style="text-decoration: underline">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx"style="margin-right: 0px">Admin</a>
                <br /><br />
            </div>
        </form>
    </body>
</html>
