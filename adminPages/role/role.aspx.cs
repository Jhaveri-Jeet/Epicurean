using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.adminPages.role
{
    public partial class role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM [Roles]");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void deleteRole(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int categoryId);

            string sql = $"DELETE FROM [Roles] WHERE Id = {categoryId}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("~/adminPages/role/role");
            else
                ShowAlert("Error: Role deletion failed");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}