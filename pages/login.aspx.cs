using System;
using System.Data;

namespace epicurean.pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Id, Name, Email, Password FROM Users WHERE Email = '" + email.Text + "' AND Password = '" + password.Text + "'");
            if (dt.Rows.Count != 0)
            {
                int userId = Convert.ToInt32(dt.Rows[0]["Id"]);
                string userName = dt.Rows[0]["Name"].ToString();
                Session["user"] = "true";
                Session["userId"] = userId;
                Session["userEmail"] = email.Text;
                Session["userName"] = userName;
                Response.Redirect("~/index");
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("kai nathi bhai aaya ");
            }
        }
    }
}