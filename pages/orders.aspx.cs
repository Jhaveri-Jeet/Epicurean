using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.pages
{
    public partial class orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != "true")
                Response.Redirect("~/pages/login");

            int userId = Convert.ToInt32(Session["userId"]);
            DataTable dt = utils.service.select($"SELECT Products.Name, Products.Price, Orders.TotalQuantity, Orders.GrandTotal, Orders.Status FROM [Orders] INNER JOIN Products ON Orders.ProductId = Products.Id WHERE Orders.UserId = {userId} AND Orders.Status != 'InCart'");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}