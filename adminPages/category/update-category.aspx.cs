using System;
using System.Data;
using System.Diagnostics;

namespace epicurean.adminPages.category
{
    public partial class update_category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                string sql = $"SELECT * FROM [Categories] WHERE Id = {id}";
                DataTable dt = utils.service.select(sql);
                //if(dt.Rows.Count > 0)
                //    updatedName.Text = dt.Rows[0]["Name"].ToString();
            }
        }

        protected void updateCategory(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Debug.WriteLine(updatedName.Text);
            string sql = $"UPDATE [Categories] SET Name = '{updatedName.Text}' WHERE Id = {id}";

            int rows = utils.service.execute(sql);
            if (rows > 0)
                Response.Redirect("~/adminPages/category/category");
            else
                Response.Redirect("~/adminPages/category/update-category?id=" + id);
        }
    }
}