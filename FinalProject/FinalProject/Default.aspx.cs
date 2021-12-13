using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["account"]==null)
            {
                loginLinkBT.Visible = true;
                welcomeLB.Visible = false;
                Image1.Visible = false;
                logoutLinkBT.Visible = false;
            }
            else
            {
                welcomeLB.Text = Session["account"] + "您好，歡迎光臨PandaFood";
                Image1.ImageUrl = Path.Combine("~/Uploads/" + Session["pic"]);
                Image1.Width = 100;
                Image1.Height = 100;
                loginLinkBT.Visible = false;
                welcomeLB.Visible = true;
                Image1.Visible = true;
                logoutLinkBT.Visible = true;
            }
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

        protected void logoutLinkBT_Click(object sender, EventArgs e)
        {
            Session["account"] = null;
            Session["password"] = null;
            Session["pic"] = null;
            Session["phone"] = null;
            Session["money"] = null;
            Response.Write("<script>alert('登出成功!回首頁')</script>");
            Response.Write("<script>window.location.href='Default.aspx'</script>");
        }

        protected void loginLinkBT_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
    }
}