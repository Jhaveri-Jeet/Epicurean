using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace epicurean.adminPages.role
{
    public partial class update_role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                string sql = $"SELECT * FROM [Roles] WHERE Id = {id}";
                DataTable dt = utils.service.select(sql);
                //if(dt.Rows.Count > 0)
                //    updatedName.Text = dt.Rows[0]["Name"].ToString();
            }
        }

        protected void updateRole(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Debug.WriteLine(updatedName.Text);
            string sql = $"UPDATE [Roles] SET Name = '{updatedName.Text}' WHERE Id = {id}";

            int rows = utils.service.execute(sql);
            if (rows > 0)
                Response.Redirect("~/adminPages/role/role");
            else
                Response.Redirect("~/adminPages/role/update-role?id=" + id);
        }
    }
}