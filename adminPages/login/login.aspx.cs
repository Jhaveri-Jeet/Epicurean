using System;
using System.Data;

namespace epicurean.adminPages.login
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Email, Password FROM Users WHERE Email = '" + txtUname.Text + "' AND Password = '" + txtPassword.Text + "'");
            if (dt.Rows.Count != 0)
            {
                Session["admin"] = "true";
                Response.Redirect("~/admin.aspx");
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("kai nathi bhai aaya ");
            }
        }
    }
}