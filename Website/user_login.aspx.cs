using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System.Website
{
    public partial class user_login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from Customer_Reg where Username='" + txtuser.Text + "' and Password='" + txtpass.Text + "'";
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('Login successfull..')</script>");
            }
            else
            {
                Response.Write("<script>alert('Login Failed..')</script>");
            }
            con.Close();
        }
    }
}