using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.adminPages.order
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Orders.Id, Users.Name as UserName, Products.Name as ProductName, Orders.TotalQuantity, Orders.GrandTotal, Orders.Status FROM [Orders] INNER JOIN Users On Users.Id = Orders.UserId INNER JOIN Products ON Products.Id = Orders.ProductId WHERE Orders.Status != 'InCart'");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void deleteOrder(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int orderId);

            string sql = $"DELETE FROM [Orders] WHERE Id = {orderId}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("~/adminPages/order/order");
            else
                ShowAlert("Error: Order deletion failed");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}