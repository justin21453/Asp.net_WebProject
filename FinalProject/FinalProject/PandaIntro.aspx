<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PandaIntro.aspx.cs" Inherits="FinalProject.PandaIntro" %>

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
            height: 20px;
        }
        .auto-style3 {
            width: 1238px;
            text-align: center;
        }
        .auto-style4 {
            height: 20px;
            width: 1238px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            height: 130px;
            text-align: right;
        }
        .auto-style7 {
            width: 146px;
        }
        .auto-style8 {
            height: 20px;
            width: 146px;
        }
    </style>
</head>
<body style="background-image: url('pic/公司簡介2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;  background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style6">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">回首頁</asp:LinkButton>
                    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style4">
                    <strong>
                    <asp:Menu ID="Menu1" runat="server" DisappearAfter="100" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" OnMenuItemClick="Menu1_MenuItemClick">
                        <DynamicHoverStyle BackColor="#F79706" ForeColor="White" />
                        <DynamicMenuItemStyle BackColor="#E8A530" ForeColor="#660066" HorizontalPadding="100px" VerticalPadding="10px" Width="100px" />
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
                        <StaticMenuItemStyle ForeColor="Black" HorizontalPadding="100px" VerticalPadding="10px" Width="100px" />
                    </asp:Menu>
                    </strong>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;半夜肚子餓，怎麼辦？<br />
            PandaFood來拯救你！<br />
                <br />
                這是一個對飢腸轆轆的人非常實用的網站，<br />
                它能滿足你的胃，<br />
                只需動動你的手，食物就會出現在您面前。</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
