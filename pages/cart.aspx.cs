using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.pages
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != "true")
                Response.Redirect("~/pages/login");

            int userId = Convert.ToInt32(Session["userId"]);
            DataTable dt = utils.service.select($"SELECT Products.Name, Products.Price, Orders.TotalQuantity, Orders.GrandTotal, Orders.Status FROM [Orders] INNER JOIN Products ON Orders.ProductId = Products.Id WHERE Orders.UserId = {userId} AND Orders.Status = 'InCart'");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void placeOrder(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["userId"]);
            string sql = $"UPDATE [Orders] SET Status = 'OrderPlaced' WHERE UserId = {userId}";
            int rows = utils.service.execute(sql);
            if (rows > 0)
                Response.Redirect("~/pages/cart");
        }
    }
}