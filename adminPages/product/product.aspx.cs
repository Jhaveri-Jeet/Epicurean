using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.adminPages.product
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Products.Id, Products.Name, Products.Description, Products.Quantity, Products.Price, Products.ImageFileName, Categories.Name AS CategoryName FROM [Products] INNER JOIN [Categories] ON Categories.Id = Products.CategoryId");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void deleteProduct(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int categoryId);

            string sql = $"DELETE FROM [Products] WHERE Id = {categoryId}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("~/adminPages/product/product");
            else
                ShowAlert("Error: Product deletion failed");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}