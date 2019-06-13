<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        font-size:10px;
    }
    .auto-style2 {
        height: 23px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style6 {
        height: 30px;
        font-size: 20px;
    }
    .auto-style7 {
        width: 261px;
    }
    .auto-style8 {
        height: 23px;
        width: 261px;
    }
    .auto-style9 {
        height: 30px;
        width: 261px;
    }
    .auto-style11 {
        width: 290px;
        height: 23px;
        font-size:medium;
    }
    .auto-style12 {
        width: 261px;
        height: 26px;
    }
    .auto-style13 {
        height: 26px;
    }
</style>
<script type="text/javascript">
    function validatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID%>');
        var topicQuestions = document.getElementById('<%= TopicQuestions.ClientID%>')
        if (phoneHome.value != '' || topicQuestions.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="auto-style1" runat="server" id="FormTable">
        <tr>
            <td colspan="3" style="font-size:x-large">Thông Tin Liên Hệ<br />
                Vui lòng nhập tên Email, Số điện thoại của bạn:&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style11">Họ và tên :</td>
            <td class="auto-style12">
                <asp:TextBox ID="Name" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Địa chỉ Email :</td>
            <td class="auto-style7">
                <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="279px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Xác nhận địa chỉ Email :</td>
            <td class="auto-style8">
                <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Số điện thoại cá nhân :</td>
            <td class="auto-style12">
                <asp:TextBox ID="PhoneHome" runat="server" Width="279px" TextMode="Phone"></asp:TextBox>
            </td>
            <td class="auto-style13">
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Số lượng&nbsp; :</td>
            <td class="auto-style9">
                <asp:TextBox ID="TopicQuestions" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style11">Chú thích :</td>
            <td class="auto-style9">
                <asp:TextBox ID="Comments" runat="server" Height="50px" TextMode="MultiLine" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập một chú thích">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style9">
                <asp:Button ID="SendButton" runat="server" Text="Gửi" OnClick="SendButton_Click" />
            </td>
            <td class="auto-style2"></td>
        </tr>
    </table>
</div>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" CssClass="Attention" />
        <p runat="server" id="MessageSentPara" visible="false">
            Chúng tôi sẽ Liên lạc với bạn sớm nhất</p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="AJAX">
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Xin vui lòng chờ...
            <br />
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>



