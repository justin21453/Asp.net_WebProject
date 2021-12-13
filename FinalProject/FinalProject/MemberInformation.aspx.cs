using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class MemberInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Image memberImage = (Image)informationDetailsView.Rows[0].Cells[1].FindControl("memberImage"))
            {
                memberImage.ImageUrl = Path.Combine("~/Uploads/" + Session["pic"]);
                memberImage.Height = 100;
                memberImage.Width = 100;
            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}