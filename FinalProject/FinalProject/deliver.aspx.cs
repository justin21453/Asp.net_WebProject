using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class deliver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            areaLB.Text = "外送員帳號：" + Session["e_account"] + "<br>外送區域：" + Session["e_area"];
        }

        protected void orderUnfinishGridView_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            orderFinishGridView.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void orderUnfinishGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = orderUnfinishGridView.SelectedRow;
            using (Label e_idLB = (Label)row.Cells[1].FindControl("e_idLB"))
            {
                Session["e_id"] = Convert.ToInt32(e_idLB.Text);
            }
            orderContentLB.Text = Session["e_id"] + "號訂單內容";
            orderContentLB.Visible = true;
            orderContentGridView.DataBind();
            orderContentGridView.Visible = true;
        }

        protected void orderFinishGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = orderFinishGridView.SelectedRow;
            using (Label e_idLB2 = (Label)row.Cells[0].FindControl("e_idLB2"))
            {
                Session["e_id"] = Convert.ToInt32(e_idLB2.Text);
            }
            orderContentLB.Text = Session["e_id"] + "號訂單內容";
            orderContentLB.Visible = true;
            orderContentGridView.DataBind();
            orderContentGridView.Visible = true;
        }
    }
}