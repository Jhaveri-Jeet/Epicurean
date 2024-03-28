using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != "true")
                Response.Redirect("~/adminPages/login/login");
        }

        protected void logOut(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/adminPages/login/login");
        }
    }
}