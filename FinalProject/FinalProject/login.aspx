<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
            font-size: xx-large;
            height: 109px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style5 {
            text-align: right;
            width: 538px;
        }
        .auto-style7 {
            width: 280px;
            height: 27px;
        }
        .auto-style8 {
            text-align: left;
            width: 1502px;
            height: 27px;
        }
        .auto-style9 {
            width: 280px;
            height: 23px;
        }
        .auto-style10 {
            text-align: left;
            width: 1502px;
            height: 23px;
        }
        .auto-style11 {
            width: 280px;
            height: 26px;
        }
        .auto-style12 {
            text-align: left;
            width: 1502px;
            height: 26px;
        }
        .auto-style13 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-image: url('pic/使用登入2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center;  background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style1">
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Default.aspx" CssClass="auto-style13">回首頁</asp:LinkButton>
            </div>
        <table class="auto-style2" style="position: relative">
            <tr>
                <td class="auto-style11">
                    </td>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server" Text="帳號："></asp:Label>
                    <asp:TextBox ID="accountTB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5" rowspan="3" style="vertical-align: top">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Text="密碼："></asp:Label>
                    <asp:TextBox ID="passwordTB" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="loginBT" runat="server" OnClick="loginBT_Click" Text="登入" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="loginDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT member_account, member_password, member_pic, member_phone, member_money FROM memberTable WHERE (member_account = @member_account) AND (member_password = @member_password)">
            <SelectParameters>
                <asp:ControlParameter ControlID="accountTB" Name="member_account" PropertyName="Text" />
                <asp:ControlParameter ControlID="passwordTB" Name="member_password" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="loginDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="loginDataSource" Height="50px" Visible="False" Width="431px">
            <Fields>
                <asp:BoundField DataField="member_account" HeaderText="member_account" SortExpression="member_account" />
                <asp:BoundField DataField="member_password" HeaderText="member_password" SortExpression="member_password" />
                <asp:BoundField DataField="member_pic" HeaderText="member_pic" 
                    SortExpression="member_pic" />
                <asp:BoundField DataField="member_phone" HeaderText="member_phone" 
                    SortExpression="member_phone" />
                <asp:BoundField DataField="member_money" HeaderText="member_money" SortExpression="member_money" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
