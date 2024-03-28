using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicurean.pages
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addContact(object sender, EventArgs e)
        {
            string sql = $"INSERT INTO [Contacts] (FullName, Email, MobileNumber, Message) VALUES ('{name.Text}', '{email.Text}', '{number.Text}', '{message.Text}')";
            int rows = utils.service.execute(sql);
            if (rows > 0)
            {
                Response.Redirect("~/index");
            }
            else
            {
                Response.Redirect("~/pages/contact");
            }
        }
    }
}