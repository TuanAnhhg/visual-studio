<%@ Page Title="Hàng hóa" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Hanghoa.aspx.cs" Inherits="Hanghoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 309px;
        height: 208px;
    }
    .auto-style4 {
        width: 321px;
    }
    .auto-style5 {
        width: 300px;
        height: 189px;
    }
    .auto-style7 {
        width: 366px;
        height: 191px;
        margin-left: 44px;
    }
    .auto-style8 {
        width: 303px;
        height: 239px;
    }
    .auto-style9 {
        width: 350px;
        height: 228px;
    }
    .auto-style10 {
        width: 431px;
        height: 220px;
    }
    .auto-style11 {
        width: 343px;
    }
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        Danh Sách các loại mặt hàng chúng tôi có thể vẩn chuyển được:</p>
    <table class="auto-style2" style="width: 1540px; height: 1000px; vertical-align: top;">
        <tr>
            <td class="auto-style4">
                <img alt="" class="auto-style3" src="image/4-bi-quyet-ban-do-an-vat-qua-mang-kiem-tien-trieu-moi-ngay.jpg" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Giaohang.aspx">Đồ ăn</asp:HyperLink>
            </td>
            <td class="auto-style11">
                <img alt="" class="auto-style5" src="image/foody-mobile-foody-bobapop-636376.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Giaohang.aspx"> Đồ uống</asp:HyperLink>
            </td>
            <td>
                <img alt="" class="auto-style7" src="image/dung-cu-do-nha-bep-400x285.jpg" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Giaohang.aspx">Đồ Làm bếp</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <img alt="" class="auto-style8" src="image/kinh-nghiem-mua-do-dien-tu-o-hong-kong1.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Giaohang.aspx">Đồ Điện Tử</asp:HyperLink>
            </td>
            <td class="auto-style11">
                <img alt="" class="auto-style9" src="image/quan-ly-va-van-hanh-01.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Giaohang.aspx">Đồ điện gia dụng</asp:HyperLink>
            </td>
            <td>
                <img alt="" class="auto-style10" src="image/8.png" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Giaohang.aspx">Phương tiện giao thông</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
</table>
    <p>
        &nbsp;</p>
</asp:Content>

