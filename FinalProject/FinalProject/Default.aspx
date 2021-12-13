<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .circle{
            border-radius: 50%;
        }
        .auto-style22 {
            width: 100%;
        }
        .auto-style25 {
            font-size: medium;
        }
        .auto-style47 {
            font-size: 40pt;
        }
        .auto-style48 {
            font-size: xx-large;
        }
        .auto-style49 {
            font-size: x-large;
        }
        .auto-style50 {
            font-size: 24pt;
        }
        .auto-style51 {
            text-align: right;
            height: 28px;
        }
        .auto-style52 {
            width: 1217px;
            left: 123px;
            top: 2px;
            height: 150px;
            margin:0 auto;
            display:table;
        }
        .auto-style53 {
            width: 689px;
        }
        .auto-style54 {
            width: 311px;
        }
        .auto-style55 {
            text-align: right;
            width: 682px;
        }
        .auto-style56 {
            width: 100%;
            position: relative;
            left: 0px;
            top: 0px;
            height: 100px;
        }
        .auto-style57 {
            width: 100%;
            position: relative;
            left: 0px;
            top: 2px;
        }
        .auto-style58 {
            width: 838px;
            text-align: center;
            font-size: xx-large;
            color: #00FF00;
        }
        .auto-style59 {
            background-color: #003300;
        }
    </style>
</head>
<body style="background-image: url('pic/首頁2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;  background-size:cover;">
    <form id="form1" runat="server">
        <table class="auto-style56">
            <tr>
                <td class="auto-style51"style="vertical-align: top">
                    <strong>
                    <asp:LinkButton ID="logoutLinkBT" runat="server" OnClick="logoutLinkBT_Click" CssClass="auto-style49">登出</asp:LinkButton>
                    </strong></td>
            </tr>
        </table>
        <table class="auto-style22">
            <tr style="position: relative">
                <td>&nbsp;</td>
                <td class="auto-style52" style="vertical-align: top"><strong>
                    <asp:Menu ID="Menu1" runat="server" DisappearAfter="100" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" OnMenuItemClick="Menu1_MenuItemClick" CssClass="auto-style25">
                        <DynamicHoverStyle BackColor="#F79706" ForeColor="White" />
                        <DynamicMenuItemStyle BackColor="#E8A530" ForeColor="#660066" HorizontalPadding="100px" VerticalPadding="10px" />
                        <Items>
                            <asp:MenuItem Text="簡介" Value="1" NavigateUrl="~/PandaIntro.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="合作餐廳介紹" Value="合作餐廳介紹" Selectable="False">
                                <asp:MenuItem Text="麥噹噹" Value="1" NavigateUrl="~/McIntro.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="必輸客" Value="1" NavigateUrl="~/PizzaIntro.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="四海雲集" Value="1" NavigateUrl="~/DumplingIntro.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="會員中心" Value="會員中心" Selectable="False">
                                <asp:MenuItem Text="會員資料" Value="2"></asp:MenuItem>
                                <asp:MenuItem Text="儲值" Value="3"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="訂購外送" Value="訂購外送" Selectable="False">
                                <asp:MenuItem Text="麥噹噹" Value="4"></asp:MenuItem>
                                <asp:MenuItem Text="必輸客" Value="5"></asp:MenuItem>
                                <asp:MenuItem Text="四海雲集" Value="6"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#660066" ForeColor="White" />
                        <StaticMenuItemStyle ForeColor="Black" HorizontalPadding="100px" VerticalPadding="10px" />
                    </asp:Menu>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style57">
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style53">
                    <asp:Image ID="Image1" class="circle" runat="server" ImageAlign="Middle" alt="" Height="19px" Width="17px"/>
                    <strong style="vertical-align: top">
                    <asp:Label ID="welcomeLB" runat="server" Text="歡迎" CssClass="auto-style50" ForeColor="#3333FF"></asp:Label>
                    <asp:LinkButton ID="loginLinkBT" runat="server" PostBackUrl="~/login.aspx" OnClick="loginLinkBT_Click" CssClass="auto-style47" ForeColor="#CC0000">登入</asp:LinkButton>
                    </strong></td>
                <td class="auto-style55">
                    <strong style="vertical-align: top">
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/employeeSign.aspx" OnClick="LinkButton3_Click" CssClass="auto-style48" ForeColor="Silver">員工登入</asp:LinkButton>
                    </strong>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td class="auto-style55"><strong>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/sign.aspx" OnClick="LinkButton2_Click" CssClass="auto-style48" ForeColor="#CC0000">註冊會員</asp:LinkButton>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <table class="auto-style22">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style58"><strong><span class="auto-style59">全台最大外送平台上線囉！</span></strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
