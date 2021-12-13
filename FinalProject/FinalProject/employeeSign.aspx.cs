using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class employeeSign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            employeeLoginDetailsView.DataBind();
        }

        protected void employeeLoginBT_Click(object sender, EventArgs e)
        {
            employeeLoginDetailsView.Visible = false;
            employeeEntryLinkBT.Visible = false;
            if (employeeLoginDetailsView.DataItemCount == 1)
            {
                Session["e_account"] = employeeLoginDetailsView.Rows[0].Cells[1].Text;
                Session["e_password"] = employeeLoginDetailsView.Rows[1].Cells[1].Text;
                Session["e_area"] = employeeLoginDetailsView.Rows[2].Cells[1].Text;
                employeeEntryLinkBT.Visible = true;
            }
            else
            {
                Session["e_account"] = null;
                Session["e_password"] = null;
                Session["e_area"] = null;
                employeeLoginDetailsView.Visible = true;
            }
        }
    }
}