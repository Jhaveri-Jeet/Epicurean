using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.pages
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerUser(object sender, EventArgs e)
        {
            string sql = $"INSERT INTO Users (RoleId, Name, Email, Password) VALUES (4, '{name.Text}', '{email.Text}', '{password.Text}')";
            int rows = utils.service.execute(sql);
            if (rows > 0)
            {
                Response.Redirect("~/pages/login");
            }
            else
            {
                Response.Redirect("~/pages/register");
            }
        }
    }
}