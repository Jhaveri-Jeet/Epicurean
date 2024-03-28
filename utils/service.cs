using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace epicurean.utils
{
    public class service
    {
        static SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Jeet Jhaveri\Projects\.Net\epicurean\App_Data\epicureanDb.mdf;Integrated Security=True");
        
        internal static int execute(string sql)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int rows = cmd.ExecuteNonQuery();
            con.Close();
            return rows;
        }

        internal static DataTable select(string sql)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            con.Close();
            return dt;
        }
    }
}