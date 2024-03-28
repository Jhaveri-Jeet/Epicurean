using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.adminPages.contact
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM [Contacts]");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void deleteContact(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int categoryId);

            string sql = $"DELETE FROM [Contacts] WHERE Id = {categoryId}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("~/adminPages/contact/contact");
            else
                ShowAlert("Error: Contact deletion failed");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}