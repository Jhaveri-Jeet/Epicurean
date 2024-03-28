using System;
using System.Data;
using System.IO;
using System.Web;

namespace epicurean.adminPages.product
{
    public partial class add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Id, Name FROM [Categories]");
            categoryList.DataSource = dt;
            categoryList.DataValueField = "Id";
            categoryList.DataTextField = "Name";
            categoryList.DataBind();
        }

        protected void addProduct(object sender, EventArgs e)
        {
            if (imageFile.HasFile)
            {
                string fileName = Path.GetFileName(imageFile.FileName);

                string filePath = Server.MapPath("~/uploads/" + fileName);
                HttpPostedFile postedFile = imageFile.PostedFile;
                imageFile.SaveAs(filePath);

                string sql = $"INSERT INTO [Products] (CategoryId, Name, Description, Quantity, Price, ImageFileName) VALUES ('{categoryList.SelectedValue}', '{productName.Text}', '{productDescription.Text}', '{quantity.Text}', '{price.Text}', '{fileName}')";

                int rows = utils.service.execute(sql);

                if (rows > 0)
                {
                    Response.Redirect("~/adminPages/product/product");
                }
                else
                {
                    Response.Redirect("~/adminPages/product/add-product");
                }
            }
            else
            {
                Response.Redirect("~/adminPages/product/add-product");
            }
        }


    }
}