using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System.Website
{
    public partial class user_home : System.Web.UI.Page
    {
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(cnfg);
                SqlDataAdapter da = new SqlDataAdapter("select * from Item", con);

                DataSet ds = new DataSet();

                da.Fill(ds);
                rpt.DataSource = ds;
                rpt.DataBind();
            }
        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("item_details.aspx");
        }
    }
    
}