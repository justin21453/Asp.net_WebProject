<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deliver.aspx.cs" Inherits="FinalProject.deliver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 912px;
            height: 20px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style8 {
            width: 227px;
        }
        .auto-style9 {
            width: 912px;
            text-align: center;
        }
        .auto-style11 {
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 227px;
            height: 20px;
        }
        .auto-style16 {
            height: 20px;
        }
    </style>
</head>
<body style="background-image: url('pic/員工送餐2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;  background-size:cover;">
    <form id="form1" runat="server">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style8" style="vertical-align: top">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style12" style="vertical-align: top">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" OnClick="LinkButton1_Click">回首頁</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="vertical-align: top">
                        <asp:Label ID="areaLB" runat="server" Text="外送區域"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="目前訂單"></asp:Label>
        <asp:GridView ID="orderUnfinishGridView" runat="server" AutoGenerateColumns="False" CssClass="auto-style11" DataSourceID="employeeOrderUnfinishedDataSource" DataKeyNames="order_id" OnRowUpdated="orderUnfinishGridView_RowUpdated" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="orderUnfinishGridView_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Update" Text="完成訂單" />
                <asp:TemplateField HeaderText="訂單編號" InsertVisible="False" SortExpression="order_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("order_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="e_idLB" runat="server" Text='<%# Bind("order_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="訂單者帳號" SortExpression="order_member_account">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("order_member_account") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("order_member_account") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="訂單者電話" SortExpression="order_member_phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("order_member_phone") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("order_member_phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="訂單時間" SortExpression="order_time">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("order_time") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("order_time") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="總計" SortExpression="order_total">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("order_total") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("order_total") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="備註" SortExpression="order_ps">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("order_ps") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("order_ps") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="餐廳" SortExpression="restaurant_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("restaurant_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("restaurant_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="查看訂單內容" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </td>
                    <td class="auto-style14" rowspan="2" style="vertical-align: top">
                        <div class="auto-style3">
                        <asp:Label ID="orderContentLB" runat="server" Text="訂單編號" Visible="False"></asp:Label>
                        </div>
                        <asp:GridView ID="orderContentGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="orderContentDataSource" ForeColor="#333333" GridLines="None" Visible="False">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="orderItem_food" HeaderText="商品" SortExpression="orderItem_food" />
                                <asp:BoundField DataField="orderItem_qt" HeaderText="數量" SortExpression="orderItem_qt" />
                                <asp:BoundField DataField="food_price" HeaderText="單價" SortExpression="food_price" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="歷史訂單"></asp:Label>
                        <asp:GridView ID="orderFinishGridView" runat="server" AutoGenerateColumns="False" CssClass="auto-style6" DataSourceID="employeeOrderFinishedDataSource" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="orderFinishGridView_SelectedIndexChanged" DataKeyNames="order_id">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="訂單編號" InsertVisible="False" SortExpression="order_id">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("order_id") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="e_idLB2" runat="server" Text='<%# Bind("order_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="訂單者帳號" SortExpression="order_member_account">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("order_member_account") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("order_member_account") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="訂單者電話" SortExpression="order_member_phone">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("order_member_phone") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("order_member_phone") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="訂單時間" SortExpression="order_time">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("order_time") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("order_time") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="總計" SortExpression="order_total">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("order_total") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("order_total") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="備註" SortExpression="order_ps">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("order_ps") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("order_ps") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="餐廳" SortExpression="restaurant_name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("restaurant_name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("restaurant_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="查看訂單內容" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style16"></td>
                </tr>
        </table>
        <asp:SqlDataSource ID="employeeOrderUnfinishedDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orderTable.order_id, orderTable.order_member_account, orderTable.order_member_phone, orderTable.order_time, orderTable.order_total, orderTable.order_ps, restaurantTable.restaurant_name FROM orderTable INNER JOIN restaurantTable ON orderTable.order_kind = restaurantTable.restaurant_id WHERE (orderTable.order_area = @order_area) AND (orderTable.order_total IS NOT NULL) AND (orderTable.order_finished = 0)" UpdateCommand="UPDATE orderTable SET order_finished = 1 WHERE (order_id = @order_id)">
            <SelectParameters>
                <asp:SessionParameter Name="order_area" SessionField="e_area" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="orderUnfinishGridView" Name="order_id" PropertyName="SelectedDataKey" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="employeeOrderFinishedDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orderTable.order_id, orderTable.order_member_account, orderTable.order_member_phone, orderTable.order_time, orderTable.order_total, orderTable.order_ps, restaurantTable.restaurant_name FROM orderTable INNER JOIN restaurantTable ON orderTable.order_kind = restaurantTable.restaurant_id WHERE (orderTable.order_finished = 1) AND (orderTable.order_area = @order_area)">
            <SelectParameters>
                <asp:SessionParameter Name="order_area" SessionField="e_area" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="orderContentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orderItemTable.orderItem_food, orderItemTable.orderItem_qt, foodTable.food_price FROM orderItemTable INNER JOIN foodTable ON orderItemTable.orderItem_food = foodTable.food_name WHERE (orderItemTable.order_id = @order_id)">
            <SelectParameters>
                <asp:SessionParameter Name="order_id" SessionField="e_id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
