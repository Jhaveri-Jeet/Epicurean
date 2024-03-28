using System;
using System.Data;

namespace epicurean.pages
{
    public partial class addToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int productId = int.Parse(Request.QueryString["id"]);
            int userId = Convert.ToInt32(Session["userId"]);

            DataTable product = utils.service.select($"SELECT * FROM [Products] WHERE Id = {productId}");
            DataTable dt = utils.service.select($"SELECT * FROM [Orders] WHERE UserId = {userId} AND ProductId = {productId} AND Status = 'InCart'");
            if (dt.Rows.Count > 0)
            {
                int totalQuantity = Convert.ToInt32(dt.Rows[0]["TotalQuantity"]) + 1;
                int grandTotal = Convert.ToInt32(product.Rows[0]["Price"]) * totalQuantity;
                string sql = $"UPDATE [Orders] SET TotalQuantity = {totalQuantity}, GrandTotal = {grandTotal} WHERE UserId = {userId} AND ProductId = {productId}";
                int rows = utils.service.execute(sql);
                if (rows > 0)
                {
                    Response.Redirect("~/pages/cart");
                }
            }
            else
            {
                int price = Convert.ToInt32(product.Rows[0]["Price"]);
                string status = "InCart";
                int totalQuantity = 1;

                string sql = $"INSERT INTO [Orders] (UserId, ProductId, TotalQuantity, GrandTotal, Status) VALUES ('{userId}', '{productId}', '{totalQuantity}', '{price}', '{status}')";
                int rows = utils.service.execute(sql);
                if (rows > 0)
                {
                    Response.Redirect("~/pages/cart");
                }
            }
        }
    }
}