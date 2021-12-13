<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="food.aspx.cs" Inherits="FinalProject.food" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            background-color: #FF3399;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style14 {
            height: 36px;
            text-align: center;
            }
        .auto-style16 {
            text-align: left;
        }
        .auto-style22 {
            font-size: medium;
        }
        .auto-style26 {
            font-size: large;
        }
        .auto-style27 {
            width: 693px;
            text-align: center;
        }
        .auto-style28 {
            text-align: left;
            width: 375px;
        }
        .auto-style29 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <input id="Hidden1" type="hidden" />
        <div class="auto-style3">
            <strong><span class="auto-style4">PandaFood</span></strong></div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style16" colspan="3">
                    <asp:Label ID="userShowLB" runat="server" CssClass="auto-style6" Text="將顯示使用者資料"></asp:Label>
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td class="auto-style29">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style26" PostBackUrl="~/Default.aspx">回首頁</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="4">
                    <asp:Label ID="Label23" runat="server" CssClass="auto-style22" Text="外送區域："></asp:Label>
                    <asp:DropDownList ID="areaDDL" runat="server" DataSourceID="areaDataSource" DataTextField="employee_area" DataValueField="employee_area">
                    </asp:DropDownList>
                    <asp:Button ID="startOrderBT" runat="server" Text="開始訂購" OnClick="startOrderBT_Click" />
                    <asp:Button ID="okOrderBT" runat="server" OnClick="okOrderBT_Click" Text="確認訂購" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style28" style="vertical-align: top">
                    <asp:Label ID="psLB" runat="server" CssClass="auto-style26" Text="備註：" Visible="False"></asp:Label>
                    <asp:TextBox ID="psTB" runat="server" Columns="50" Rows="10" TextMode="MultiLine" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:GridView ID="foodGridView" runat="server" AutoGenerateColumns="False" DataSourceID="foodDataSource" OnSelectedIndexChanged="foodGridView_SelectedIndexChanged" CellPadding="4" CssClass="auto-style26" ForeColor="#333333" GridLines="None" Visible="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="商品" SortExpression="food_name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("food_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="foodLB" runat="server" Text='<%# Bind("food_name") %>' Width="250px"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="foodImage" runat="server" Height="<%# 100 %>" Width="<%# 100 %>" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="單價" SortExpression="food_price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("food_price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("food_price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="數量">
                                <ItemTemplate>
                                    <asp:TextBox ID="qtTB" runat="server"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="加入購物車" />
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
                <td class="auto-style3" style="vertical-align: top" colspan="2">
                    <asp:Label ID="totalPriceLB" runat="server" Text="總計X元" Visible="False"></asp:Label>
                    <div class="auto-style3">
                    <asp:GridView ID="orderFoodGridView" runat="server" AutoGenerateColumns="False" DataSourceID="orderItemDataSource" CssClass="auto-style26" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="orderFoodGridView_RowDataBound" DataKeyNames="orderItem_id">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="orderItem_food" HeaderText="商品" SortExpression="orderItem_food" />
                            <asp:BoundField DataField="orderItem_qt" HeaderText="數量" SortExpression="orderItem_qt" />
                            <asp:BoundField DataField="food_price" HeaderText="單價" SortExpression="food_price" />
                            <asp:BoundField DataField="subtotlal" HeaderText="小計" ReadOnly="True" SortExpression="subtotlal" />
                            <asp:BoundField DataField="orderItem_id" HeaderText="orderItem_id" InsertVisible="False" ReadOnly="True" SortExpression="orderItem_id" Visible="False" />
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
                    </div>
                </td>
            </tr>
            </table>
        <asp:SqlDataSource ID="foodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [food_name], [food_price] FROM [foodTable]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="startOrderDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            InsertCommand="INSERT INTO orderTable(order_area, order_member_account, order_member_phone) VALUES (@order_area, @order_member_account, @order_member_phone)" 
            SelectCommand="SELECT [order_member_account], [order_member_phone] FROM [orderTable] WHERE (([order_member_account] = @order_member_account) AND ([order_member_phone] = @order_member_phone))">
            <InsertParameters>
                <asp:ControlParameter ControlID="areaDDL" Name="order_area" PropertyName="SelectedValue" />
                <asp:SessionParameter Name="order_member_account" SessionField="account" />
                <asp:SessionParameter Name="order_member_phone" SessionField="phone" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="order_member_account" SessionField="account" Type="String" />
                <asp:SessionParameter Name="order_member_phone" SessionField="phone" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="orderItemDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderItemTable(order_id, orderItem_food, orderItem_qt) VALUES (@order_id, @orderItem_food, @orderItem_qt)" SelectCommand="SELECT orderItemTable.orderItem_food, orderItemTable.orderItem_qt, foodTable.food_price, foodTable.food_price * orderItemTable.orderItem_qt AS subtotlal, orderItemTable.orderItem_id FROM orderItemTable INNER JOIN foodTable ON orderItemTable.orderItem_food = foodTable.food_name WHERE (orderItemTable.order_id = @order_id)" DeleteCommand="DELETE FROM orderItemTable WHERE (orderItem_id = @orderItem_id)" UpdateCommand="UPDATE orderItemTable SET orderItem_qt = @orderItem_qt WHERE (orderItem_id = @orderItem_id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="orderFoodGridView" Name="orderItem_id" PropertyName="SelectedDataKey" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
                <asp:SessionParameter Name="orderItem_food" SessionField="orderItem_food" />
                <asp:SessionParameter Name="orderItem_qt" SessionField="orderItem_qt" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="orderFoodGridView" Name="orderItem_qt" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="orderFoodGridView" Name="orderItem_id" PropertyName="SelectedDataKey" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="foodImgDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [food_img], [food_name] FROM [foodTable]"></asp:SqlDataSource>
        <asp:GridView ID="foodImgGridView" runat="server" AutoGenerateColumns="False" DataSourceID="foodImgDataSource" Visible="False" CssClass="auto-style26">
            <Columns>
                <asp:BoundField DataField="food_img" HeaderText="food_img" SortExpression="food_img" />
                <asp:BoundField DataField="food_name" HeaderText="food_name" SortExpression="food_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="areaDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [employee_area] FROM [employeeTable]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="endOrderDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [order_id] FROM [orderTable]" UpdateCommand="UPDATE orderTable SET order_ps = @order_ps, order_time = GETDATE(), order_total = @order_total, order_finished = 0 WHERE (order_id = @order_id)">
            <UpdateParameters>
                <asp:ControlParameter ControlID="psTB" Name="order_ps" PropertyName="Text" />
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
                <asp:SessionParameter Name="order_total" SessionField="order_total" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
