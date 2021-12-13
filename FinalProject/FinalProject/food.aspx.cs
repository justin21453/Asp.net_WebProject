using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class food : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userShowLB.Text = Session["account"] + " 歡迎光臨 PandaFood";
            Image1.ImageUrl = Path.Combine("~/Uploads/" + Session["pic"]);
            Image1.Width = 100;
            Image1.Height = 100;
            begin();
            orderFoodGridView.Visible = true;
        }
        private void begin()
        {
            for (int i = 0; i < foodGridView.Rows.Count; i++)
            {
                using (Image foodImage = (Image)foodGridView.Rows[i].Cells[2].FindControl("foodImage"))
                using (Label foodLB = (Label)foodGridView.Rows[i].Cells[0].FindControl("foodLB"))
                {
                    for (int j = 0; j < foodImgGridView.Rows.Count; j++)
                    {
                        if (foodImgGridView.Rows[j].Cells[1].Text == foodLB.Text)
                        {
                            foodImage.ImageUrl = Path.Combine("~/pic/" + foodImgGridView.Rows[j].Cells[0].Text);
                            break;
                        }
                    }
                }
            }
        }

        protected void startOrderBT_Click(object sender, EventArgs e)
        {
            foodGridView.Visible = true;
            psTB.Visible = true;
            psLB.Visible = true;
            startOrderDataSource.Insert();
            SqlConnection orderConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\pandafoodDatabase.mdf;Integrated Security=True");
            orderConnection.Open();
            SqlDataReader dataReader;
            SqlCommand command = new SqlCommand("select top 1 order_id from [orderTable] order by order_id Desc", orderConnection);
            dataReader = command.ExecuteReader();
            if (dataReader.Read())
            {
                Session["order_id"] = dataReader["order_id"];
                startOrderBT.Text = dataReader["order_id"] + "號訂單";
                startOrderBT.Enabled = false;
            }
            dataReader.Close();
        }

        protected void foodGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow addrow = foodGridView.SelectedRow;
            using (Label foodLB = (Label)addrow.Cells[0].FindControl("foodLB"))
            {
                Session["orderItem_food"] = foodLB.Text;
            }
            using (TextBox qtTB = (TextBox)addrow.Cells[2].FindControl("qtTB"))
            {
                Session["orderItem_qt"] = Convert.ToInt32(qtTB.Text);
            }
            orderItemDataSource.Insert();
            if (!orderFoodGridView.Visible)
                orderFoodGridView.Visible = true;
        }

        protected void orderFoodGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            countTotal();
        }
        private void countTotal()
        {
            totalPriceLB.Visible = true;
            okOrderBT.Visible = true;
            int total = 0;
            for(int i=0;i<orderFoodGridView.Rows.Count;i++)
            {
                if (orderFoodGridView.Rows[i].Cells[3].FindControl("totalLB") != null)
                    total += Convert.ToInt32(((Label)orderFoodGridView.Rows[i].Cells[3].FindControl("totalLB")).Text);
            }
            totalPriceLB.Text = "總計：" + total + "元";
            if (total > 0)
                okOrderBT.Enabled = true;
            else
                okOrderBT.Enabled = false;
            Session["order_total"] = total;
        }

        protected void okOrderBT_Click(object sender, EventArgs e)
        {
            endOrderDataSource.Update();
            Response.Write("<script>alert('訂購成功!確定後跳回首頁')</script>");
            Response.Write("<script>window.location.href='Default.aspx'</script>");
        }
    }
}