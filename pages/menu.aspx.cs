using System;
using System.Data;

namespace epicurean.pages
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM [Products]");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}