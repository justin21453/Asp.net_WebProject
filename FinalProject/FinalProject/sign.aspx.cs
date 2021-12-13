using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class sign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            signDetailsView.DataBind();
            signDetailsView.Visible = false;
            isSignErrorLB.Visible = false;
            signYearDDL.AutoPostBack = true;
            signMonthDDL.AutoPostBack = true;
            signDayDDL.AutoPostBack = true;
            if (!IsPostBack)
            {
                signMonthDDL.Items.Add(new ListItem("請選擇", "" + 0));
                signDayDDL.Items.Add(new ListItem("請選擇", "" + 0));
                signYearDDL.Items.Add(new ListItem("請選擇", "" + 0));
                for (int i = 0; i < 100; i++)
                {
                    signYearDDL.Items.Add(new ListItem("" + (i + 1920), "" + (i + 1920)));
                }
                for (int i = 0; i < 12; i++)
                {
                    signMonthDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                }
                for (int i = 0; i < 30; i++)
                {
                    signDayDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                }
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void signYearDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            signDayDDL.Items.Clear();
            signDayDDL.Items.Add(new ListItem("請選擇", "" + 0));
            int FebDay = 28;
            if ((signYearDDL.SelectedIndex + 1919) % 4 == 0 &&
                (signYearDDL.SelectedIndex + 1919) % 100 != 0 ||
                (signYearDDL.SelectedIndex + 1919) % 400 == 0)
                FebDay = 29;
            switch (signMonthDDL.SelectedIndex)
            {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                    for (int i = 0; i < 31; i++)
                    {
                        signDayDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                    }
                    break;
                case 2:
                    for (int i = 0; i < FebDay; i++)
                    {
                        signDayDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                    }
                    break;
                default:
                    for (int i = 0; i < 30; i++)
                    {
                        signDayDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                    }
                    break;
            }
        }

        protected void signMonthDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            signDayDDL.Items.Clear();
            signDayDDL.Items.Add(new ListItem("請選擇", "" + 0));
            int FebDay = 28;
            if ((signYearDDL.SelectedIndex + 1919) % 4 == 0 &&
                (signYearDDL.SelectedIndex + 1919) % 100 != 0 ||
                (signYearDDL.SelectedIndex + 1919) % 400 == 0)
                FebDay = 29;
            switch (signMonthDDL.SelectedIndex)
            {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                    for (int i = 0; i < 31; i++)
                    {
                        signDayDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                    }
                    break;
                case 2:
                    for (int i = 0; i < FebDay; i++)
                    {
                        signDayDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                    }
                    break;
                default:
                    for (int i = 0; i < 30; i++)
                    {
                        signDayDDL.Items.Add(new ListItem("" + (i + 1), "" + (i + 1)));
                    }
                    break;
            }
        }

        protected void signOkBT_Click(object sender, EventArgs e)
        {
            birthdayLB.Text = signYearDDL.SelectedValue + "/" + signMonthDDL.SelectedValue + "/" + signDayDDL.SelectedValue;
            if (FileUpload1.HasFile)
            {
                if (signDetailsView.DataItemCount != 1)
                {
                    if (signPasswordOkTB.Text == signPasswordTB.Text)
                    {
                        memberDataSource.Insert();
                        string ext = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                        if (ext == ".jpg" || ext == ".png")
                        {
                            string dir = "~/Uploads/";
                            FileUpload1.SaveAs(Server.MapPath(Path.Combine(dir + FileUpload1.FileName)));
                            Response.Write("<script>alert('註冊成功!')</script>");
                            Response.Write("<script>window.location.href='Default.aspx'</script>");
                        }
                    }
                    else
                    {
                        isSignErrorLB.Text = "註冊失敗：密碼與確認密碼不同";
                        isSignErrorLB.Visible = true;
                    }
                }
                else
                {
                    isSignErrorLB.Text = "註冊失敗：輸入的帳號或電子郵件或電話號碼已被註冊";
                    isSignErrorLB.Visible = true;
                }
            }
            else
            {
                isSignErrorLB.Text = "註冊失敗：頭像請上傳.jpg或.png檔";
                isSignErrorLB.Visible = true;
            }
               
        }
    }
}