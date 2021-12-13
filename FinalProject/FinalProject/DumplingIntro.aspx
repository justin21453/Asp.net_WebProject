<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DumplingIntro.aspx.cs" Inherits="FinalProject.DumplingIntro" %>

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
            height: 20px;
            text-align: center;
            width: 445px;
        }
        .auto-style4 {
            width: 445px;
        }
        .auto-style5 {
            text-align: right;
            height: 109px;
        }
        .auto-style6 {
            width: 146px;
        }
        .auto-style7 {
            height: 20px;
            width: 146px;
        }
        </style>
</head>
<body style="background-image: url('pic/餐廳簡介2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;  background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style5">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">回首頁</asp:LinkButton>
                    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style3">
                    <strong>
                    <asp:Menu ID="Menu1" runat="server" DisappearAfter="100" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" OnMenuItemClick="Menu1_MenuItemClick">
                        <DynamicHoverStyle BackColor="#F79706" ForeColor="White" />
                        <DynamicMenuItemStyle BackColor="#E8A530" ForeColor="#660066" HorizontalPadding="20px" VerticalPadding="5px" />
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
                        <StaticMenuItemStyle ForeColor="Black" HorizontalPadding="20px" VerticalPadding="10px" />
                    </asp:Menu>
                    </strong>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">四海雲集<br />
                    <br />
                    全台最大水餃專賣店開幕囉！</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    </body>
</html>
