<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dumplingfood.aspx.cs" Inherits="FinalProject.Dumplingfood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .circle{
            border-radius: 50%;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style26 {
            font-size: large;
        }
        .resize{
            resize:none;
        }
        .auto-style22 {
            font-size: medium;
        }
        .auto-style36 {
            font-size: large;
            margin-top: 0px;
        }
        .auto-style37 {
            text-align: center;
        }
        .auto-style38 {
            text-align: right;
        }
        .auto-style40 {
            width: 429px;
        }
        .auto-style41 {
            width: 551px;
            text-align: center;
        }
        .auto-style42 {
            font-size: xx-large;
        }
        .auto-style43 {
            width: 551px;
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body style="background-image: url('pic/點餐頁面2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;  background-size:cover;">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style40">
                    <asp:Image ID="Image1" class="circle" runat="server" ImageAlign="Middle" alt="" Height="20px" Width="22px"/>
                    <asp:Label ID="userShowLB" runat="server" CssClass="auto-style6" Text="將顯示使用者資料"></asp:Label>
                    </td>
                <td class="auto-style43"><strong>四海雲集</strong></td>
                <td class="auto-style38" style="vertical-align: top">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style26" PostBackUrl="~/Default.aspx">回首頁</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style37" colspan="3">
                    <asp:Label ID="Label23" runat="server" CssClass="auto-style22" Text="外送區域："></asp:Label>
                    <asp:DropDownList ID="areaDDL" runat="server" DataSourceID="areaDataSource" DataTextField="employee_area" DataValueField="employee_area">
                    </asp:DropDownList>
                    <asp:Button ID="startOrderBT" runat="server" Text="開始訂購" OnClick="startOrderBT_Click" />
                    <asp:Button ID="okOrderBT" runat="server" OnClick="okOrderBT_Click" Text="確認訂購" Visible="False" />
                    <asp:Label ID="moneyNoEnoughLB" runat="server" CssClass="auto-style22" Text="餘額不足" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40" style="vertical-align: top">
                    <asp:Label ID="psLB" runat="server" CssClass="auto-style26" Text="備註：" Visible="False"></asp:Label>
                    <br />
                    <asp:TextBox ID="psTB" runat="server" Columns="50" Rows="10" TextMode="MultiLine" Visible="False" class="resize"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:GridView ID="foodGridView" runat="server" AutoGenerateColumns="False" DataSourceID="foodDataSource" OnSelectedIndexChanged="foodGridView_SelectedIndexChanged" CellPadding="4" CssClass="auto-style36" ForeColor="#333333" GridLines="None" Visible="False" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="商品" SortExpression="food_name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("food_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="foodLB" runat="server" Text='<%# Bind("food_name") %>' Width="150px"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("food_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="foodImage" runat="server" ImageUrl='<%# Eval("food_name") %>' />
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
                                    <asp:TextBox ID="qtTB" runat="server">1</asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" Text="加入購物車" />
                                </ItemTemplate>
                            </asp:TemplateField>
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
                <td style="vertical-align: top">
                    <div class="auto-style37">
                    <asp:Label ID="totalPriceLB" runat="server" Text="總計X元" Visible="False" CssClass="auto-style42"></asp:Label>
                    </div>
                    <div class="auto-style37">
                    <asp:GridView ID="orderFoodGridView" runat="server" AutoGenerateColumns="False" DataSourceID="orderFoodDataSource" CssClass="auto-style26" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="orderFoodGridView_RowDataBound" DataKeyNames="orderItem_id" OnRowDeleted="orderFoodGridView_RowDeleted" OnRowUpdated="orderFoodGridView_RowUpdated" OnSelectedIndexChanged="orderFoodGridView_SelectedIndexChanged" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:TemplateField HeaderText="商品" SortExpression="orderItem_food">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("orderItem_food") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("orderItem_food") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="數量" SortExpression="orderItem_qt">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("orderItem_qt") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("orderItem_qt") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="單價" SortExpression="food_price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("food_price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("food_price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="小計" SortExpression="小計">
                                <EditItemTemplate>
                                    <asp:Label ID="totalLB" runat="server" Text='<%# Eval("小計") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="totalLB" runat="server" Text='<%# Bind("小計") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="orderItem_id" HeaderText="orderItem_id" SortExpression="orderItem_id" InsertVisible="False" ReadOnly="True" Visible="False" />
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
        <asp:SqlDataSource ID="foodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [food_name], [food_price] FROM [foodTable] WHERE ([food_kind] = @food_kind)">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="food_kind" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="startOrderDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            InsertCommand="INSERT INTO orderTable(order_area, order_member_account, order_member_phone, order_kind) VALUES (@order_area, @order_member_account, @order_member_phone, 3)" 
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
        <asp:SqlDataSource ID="orderFoodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderItemTable(order_id, orderItem_food, orderItem_qt) VALUES (@order_id, @orderItem_food, @orderItem_qt)" SelectCommand="SELECT orderItemTable.orderItem_food, orderItemTable.orderItem_qt, foodTable.food_price, foodTable.food_price * orderItemTable.orderItem_qt AS 小計, orderItemTable.orderItem_id FROM orderItemTable INNER JOIN foodTable ON orderItemTable.orderItem_food = foodTable.food_name WHERE (orderItemTable.order_id = @order_id)" DeleteCommand="DELETE FROM orderItemTable WHERE (orderItem_id = @orderItem_id)" UpdateCommand="UPDATE orderItemTable SET orderItem_qt = @orderItem_qt WHERE (orderItem_id = @orderItem_id)">
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
        <asp:SqlDataSource ID="moneyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [member_account] FROM [memberTable]" UpdateCommand="UPDATE memberTable SET member_money = @member_money WHERE (member_account = @member_account)">
            <UpdateParameters>
                <asp:SessionParameter Name="member_money" SessionField="money" />
                <asp:SessionParameter DefaultValue="" Name="member_account" SessionField="account" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
