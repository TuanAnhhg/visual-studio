<%@ Page Title="Giao hàng" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Giaohang.aspx.cs" Inherits="Giaohang" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Dat" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <Dat:ContactForm ID="ContactForm1" runat="server" />
</asp:Content>

