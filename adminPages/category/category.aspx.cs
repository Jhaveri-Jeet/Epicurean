using System;
using System.Data;
using System.Web.UI.WebControls;

namespace epicurean.adminPages
{
    public partial class addCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM [Categories]");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void deleteCategory(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int categoryId);

            string sql = $"DELETE FROM [Categories] WHERE Id = {categoryId}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("~/adminPages/category/category");
            else
                ShowAlert("Error: Category deletion failed");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }

    }
}