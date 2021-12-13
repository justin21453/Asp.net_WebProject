using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginDetailsView.DataBind();
        }

        protected void loginBT_Click(object sender, EventArgs e)
        {
            loginDetailsView.Visible = false;
            if (loginDetailsView.DataItemCount==1)
            {
                Session["account"] = loginDetailsView.Rows[0].Cells[1].Text;
                Session["password"] = loginDetailsView.Rows[1].Cells[1].Text;
                Session["pic"] = loginDetailsView.Rows[2].Cells[1].Text;
                Session["phone"] = loginDetailsView.Rows[3].Cells[1].Text;
                Session["money"] = loginDetailsView.Rows[4].Cells[1].Text;
                Response.Write("<script>alert('登入成功!')</script>");
                Response.Write("<script>window.location.href='Default.aspx'</script>");
            }
            else
            {
                Session["account"] = null;
                Session["password"] = null;
                Session["pic"] = null;
                Session["phone"] = null;
                Session["money"] = null;
                loginDetailsView.Visible = true;
            }
        }

        protected void entryLinkBT_Click(object sender, EventArgs e)
        {

        }

        protected void passwordTB_TextChanged(object sender, EventArgs e)
        {

        }
    }
}