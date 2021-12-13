<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeeSign.aspx.cs" Inherits="FinalProject.employeeSign" %>

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
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 846px;
            text-align: left;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            width: 259px;
        }
        .auto-style7 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-image: url('pic/員工登入2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center ;  background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" CssClass="auto-style7">回首頁</asp:LinkButton>
                </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="employeeAccountLB" runat="server" Text="員工帳號："></asp:Label>
                    <asp:TextBox ID="employeeAccountTB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="employeePasswordLB" runat="server" Text="員工密碼："></asp:Label>
                    <asp:TextBox ID="employeePasswordTB" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="employeeLoginBT" runat="server" OnClick="employeeLoginBT_Click" Text="員工登入" />
                    <asp:LinkButton ID="employeeEntryLinkBT" runat="server" PostBackUrl="~/deliver.aspx" Visible="False">進入送貨頁面</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="employeeLoginDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT employee_name, employee_password, employee_area FROM employeeTable WHERE (employee_password = @employee_password) AND (employee_name = @employee_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="employeePasswordTB" Name="employee_password" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="employeeAccountTB" Name="employee_name" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="employeeLoginDetailsView" runat="server" Height="50px" 
            Width="125px" AutoGenerateRows="False" DataSourceID="employeeLoginDataSource">
            <Fields>
                <asp:BoundField DataField="employee_name" HeaderText="employee_name" 
                    SortExpression="employee_name" />
                <asp:BoundField DataField="employee_password" HeaderText="employee_password" 
                    SortExpression="employee_password" />
                <asp:BoundField DataField="employee_area" HeaderText="employee_area" SortExpression="employee_area" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
