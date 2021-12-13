<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopUp.aspx.cs" Inherits="FinalProject.TopUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 70px;
        }
        .auto-style3 {
            text-align: left;
            width: 590px;
            height: 36px;
        }
        .auto-style4 {
            height: 62px;
            text-align: left;
            width: 590px;
        }
        .auto-style5 {
            text-align: right;
            height: 62px;
        }
        .auto-style6 {
            height: 62px;
            width: 259px;
        }
        .auto-style7 {
            width: 259px;
            height: 36px;
        }
        .auto-style8 {
            text-align: right;
            height: 109px;
        }
        .auto-style11 {
            height: 36px;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style13 {
            height: 70px;
            width: 259px;
        }
        .auto-style14 {
            height: 70px;
            text-align: left;
            width: 590px;
        }
    </style>
</head>
<body style="background-image: url('pic/使用註冊2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;  background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style8">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" OnClick="LinkButton1_Click">回首頁</asp:LinkButton>
                </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14"><strong><span class="auto-style12">會員儲值中心</span></strong><br />
                    帳戶剩餘金額：<asp:Label ID="nowMoneyLB" runat="server" Text="剩餘金額"></asp:Label>
                    </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style4">
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="儲值金額："></asp:Label>
                    <asp:TextBox ID="topUpTB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5" style="vertical-align: top">
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style3">
                    <asp:Button ID="topUpBT" runat="server" OnClick="topUpBT_Click" Text="確認儲值" />
                </td>
                <td class="auto-style11"></td>
            </tr>
        </table>
        <asp:SqlDataSource ID="topUpMoneyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [member_account] FROM [memberTable]" UpdateCommand="UPDATE memberTable SET member_money = @member_money WHERE (member_account = @member_account)">
            <UpdateParameters>
                <asp:SessionParameter Name="member_money" SessionField="money" />
                <asp:SessionParameter Name="member_account" SessionField="account" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
