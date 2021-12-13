using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class TopUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nowMoneyLB.Text = Session["money"] + "元";
        }

        protected void topUpBT_Click(object sender, EventArgs e)
        {
            Session["money"] = Convert.ToInt32(Session["money"]) + Convert.ToInt32(topUpTB.Text);
            topUpMoneyDataSource.Update();
            Response.Write("<script>alert('儲值成功!')</script>");
            Response.Write("<script>window.location.href='Default.aspx'</script>");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}