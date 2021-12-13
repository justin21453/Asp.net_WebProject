<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="FinalProject.sign" %>

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
            position: relative;
            left: 0px;
            top: 0px;
        }
        .auto-style7 {
            text-align: right;
            width: 148px;
        }
        .auto-style8 {
            width: 1059px;
        }
        .auto-style14 {
            width: 172px;
        }
        .auto-style18 {
            width: 1059px;
            height: 23px;
        }
        .auto-style19 {
            width: 172px;
            height: 23px;
        }
        .auto-style20 {
            font-size: medium;
        }
        .auto-style21 {
            width: 1059px;
            height: 23px;
            text-align: left;
        }
        .auto-style23 {
            width: 1059px;
            text-align: left;
        }
        .auto-style26 {
            width: 148px;
            height: 23px;
            text-align: right;
        }
        .auto-style27 {
            width: 259px;
        }
        .auto-style28 {
            width: 259px;
            height: 23px;
        }
    </style>
</head>
<body style="background-image: url('pic/使用註冊2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;  background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" CssClass="auto-style20">回首頁</asp:LinkButton>
                </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="帳號："></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="signAccountTB" runat="server" MaxLength="20"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="密碼："></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="signPasswordTB" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password" MaxLength="20"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style26">
                    <asp:Label ID="Label3" runat="server" Text="確認密碼："></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="signPasswordOkTB" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="電子郵件："></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="signEmailTB" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style26">
                    <asp:Label ID="Label11" runat="server" Text="電話："></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="signPhoneTB" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" Text="出生年月日："></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="signYearDDL" runat="server" OnSelectedIndexChanged="signYearDDL_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Label ID="Label8" runat="server" Text="年"></asp:Label>
                    <asp:DropDownList ID="signMonthDDL" runat="server" OnSelectedIndexChanged="signMonthDDL_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Label ID="Label9" runat="server" Text="月"></asp:Label>
                    <asp:DropDownList ID="signDayDDL" runat="server">
                    </asp:DropDownList>
                    <asp:Label ID="Label10" runat="server" Text="日"></asp:Label>
                    <asp:Label ID="birthdayLB" runat="server" Text="出生日輸出" Visible="False"></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="性別："></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="signSexDDL" runat="server">
                        <asp:ListItem>不知道</asp:ListItem>
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                        <asp:ListItem>第三性</asp:ListItem>
                        <asp:ListItem>無性別</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style26">
                    <asp:Label ID="Label12" runat="server" Text="頭像："></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="signOkBT" runat="server" OnClick="signOkBT_Click" Text="確定註冊" />
                    <asp:Label ID="isSignErrorLB" runat="server" ForeColor="Red" Text="註冊是否成功"></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="memberDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            InsertCommand="INSERT INTO memberTable(member_account, member_password, member_email, member_phone, member_sex, member_birthday, member_pic, member_money) VALUES (@member_account, @member_password, @member_email, @member_phone, @member_sex, @member_birthday, @member_pic, 0)" 
            SelectCommand="SELECT member_account, member_email, member_phone FROM memberTable WHERE (member_account = @member_account) OR (member_email = @member_email) OR (member_phone = @member_phone)">
            <InsertParameters>
                <asp:ControlParameter ControlID="signAccountTB" Name="member_account" PropertyName="Text" />
                <asp:ControlParameter ControlID="signPasswordTB" Name="member_password" PropertyName="Text" />
                <asp:ControlParameter ControlID="signEmailTB" Name="member_email" PropertyName="Text" />
                <asp:ControlParameter ControlID="signPhoneTB" Name="member_phone" PropertyName="Text" />
                <asp:ControlParameter ControlID="signSexDDL" Name="member_sex" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="birthdayLB" Name="member_birthday" PropertyName="Text" />
                <asp:ControlParameter ControlID="FileUpload1" Name="member_pic" 
                    PropertyName="FileName" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="signAccountTB" Name="member_account" PropertyName="Text" />
                <asp:ControlParameter ControlID="signEmailTB" Name="member_email" PropertyName="Text" />
                <asp:ControlParameter ControlID="signPhoneTB" Name="member_phone" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="signDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="memberDataSource" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="member_account" HeaderText="member_account" SortExpression="member_account" />
                <asp:BoundField DataField="member_email" HeaderText="member_email" SortExpression="member_email" />
                <asp:BoundField DataField="member_phone" HeaderText="member_phone" SortExpression="member_phone" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
