using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.adminPages.user
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Users.Name, Users.Email FROM [Users]");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}