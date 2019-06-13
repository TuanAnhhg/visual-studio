<%@ Page Title="Mặt hàng" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Mathang.aspx.cs" Inherits="sdhfg_Mathang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: xx-large;
        margin-left: 2px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Mahang" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="919px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Mahang" HeaderText="Mahang" ReadOnly="True" SortExpression="Mahang" />
        <asp:BoundField DataField="Tenhang" HeaderText="Tenhang" SortExpression="Tenhang" />
        <asp:BoundField DataField="Dongia" HeaderText="Dongia" SortExpression="Dongia" />
    </Columns>
</asp:GridView>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style1" DataKeyNames="Mahang" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="880px">
    <Fields>
        <asp:BoundField DataField="Mahang" HeaderText="Mahang" ReadOnly="True" SortExpression="Mahang" />
        <asp:BoundField DataField="Tenhang" HeaderText="Tenhang" SortExpression="Tenhang" />
        <asp:BoundField DataField="Dongia" HeaderText="Dongia" SortExpression="Dongia" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlgiaohangConnectionString1 %>" DeleteCommand="DELETE FROM [Mathang] WHERE [Mahang] = @Mahang" InsertCommand="INSERT INTO [Mathang] ([Mahang], [Tenhang], [Dongia]) VALUES (@Mahang, @Tenhang, @Dongia)" ProviderName="<%$ ConnectionStrings:sqlgiaohangConnectionString1.ProviderName %>" SelectCommand="SELECT [Mahang], [Tenhang], [Dongia] FROM [Mathang]" UpdateCommand="UPDATE [Mathang] SET [Tenhang] = @Tenhang, [Dongia] = @Dongia WHERE [Mahang] = @Mahang">
    <DeleteParameters>
        <asp:Parameter Name="Mahang" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Mahang" Type="String" />
        <asp:Parameter Name="Tenhang" Type="String" />
        <asp:Parameter Name="Dongia" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Tenhang" Type="String" />
        <asp:Parameter Name="Dongia" Type="String" />
        <asp:Parameter Name="Mahang" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

