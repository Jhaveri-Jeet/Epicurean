using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.adminPages.role
{
    public partial class add_role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addRole(object sender, EventArgs e)
        {
            string sql = $"INSERT INTO [Roles] (Name) VALUES ('{name.Text}')";
            int rows = utils.service.execute(sql);
            if (rows > 0)
            {
                Response.Redirect("~/adminPages/role/role");
            }
            else
            {
                Response.Redirect("~/adminPages/role/add-role");
            }
        }
    }
}