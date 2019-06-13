<%@ Page Title="Đơn Hàng" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="sdhfg_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Mahoadon" DataValueField="Makhach">
        <asp:ListItem Value="">Đơn hàng</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Mahoadon" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />
            <asp:TemplateField HeaderText="Mahoadon" SortExpression="Mahoadon">
                <ItemTemplate>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Makhach" DataFormatString="{0:g}" HeaderText="Makhach" SortExpression="Makhach" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlgiaohangConnectionString1 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [Mahoadon] = @Mahoadon" InsertCommand="INSERT INTO [HoaDon] ([Mahoadon], [Makhach], [Mahang]) VALUES (@Mahoadon, @Makhach, @Mahang)" SelectCommand="SELECT [Mahoadon], [Makhach], [Mahang] FROM [HoaDon] WHERE ([Mahoadon] = @Mahoadon)" UpdateCommand="UPDATE [HoaDon] SET [Makhach] = @Makhach, [Mahang] = @Mahang WHERE [Mahoadon] = @Mahoadon">
        <DeleteParameters>
            <asp:Parameter Name="Mahoadon" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Mahoadon" Type="String" />
            <asp:Parameter Name="Makhach" Type="String" />
            <asp:Parameter Name="Mahang" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Mahoadon" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Makhach" Type="String" />
            <asp:Parameter Name="Mahang" Type="String" />
            <asp:Parameter Name="Mahoadon" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlgiaohangConnectionString1 %>" SelectCommand="SELECT [Mahoadon], [Makhach], [Mahang] FROM [HoaDon]"></asp:SqlDataSource>
</asp:Content>

