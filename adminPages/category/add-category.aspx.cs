using System;

namespace epicurean.adminPages.category
{
    public partial class add_category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCategory(object sender, EventArgs e)
        {
            string sql = $"INSERT INTO [Categories] (Name) VALUES ('{name.Text}')";
            int rows = utils.service.execute(sql);
            if (rows > 0)
            {
                Response.Redirect("~/adminPages/category/category");
            }
            else
            {
                Response.Redirect("~/adminPages/category/add-category");
            }
        }
    }
}