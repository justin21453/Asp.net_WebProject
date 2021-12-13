using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class DumplingIntro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (Convert.ToInt32(e.Item.Value) != 1 && Session["account"] == null)
                Response.Write("<script>alert('請先登入!')</script>");
            else if (Convert.ToInt32(e.Item.Value) == 2)
                Response.Write("<script>window.location.href='MemberInformation.aspx'</script>");
            else if (Convert.ToInt32(e.Item.Value) == 3)
                Response.Write("<script>window.location.href='TopUp.aspx'</script>");
            else if (Convert.ToInt32(e.Item.Value) == 4)
                Response.Write("<script>window.location.href='Mcfood.aspx'</script>");
            else if (Convert.ToInt32(e.Item.Value) == 5)
                Response.Write("<script>window.location.href='Pizzafood.aspx'</script>");
            else if (Convert.ToInt32(e.Item.Value) == 6)
                Response.Write("<script>window.location.href='Dumplingfood.aspx'</script>");
        }
    }
}