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
    public partial class category : System.Web.UI.Page
    {
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(cnfg);
                SqlDataAdapter da = new SqlDataAdapter("select * from Category", con);

                DataSet ds = new DataSet();

                da.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }
            
                       
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {

            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("menu.aspx");
            }

            else
            {
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                DataTable dt = getData("select * from Item where Cat_Id = " + id);

                Repeater1.DataSource = dt;
                Repeater1.DataBind();

            }
            
        }
        private DataTable getData(String query)
        {
            SqlConnection con = new SqlConnection(cnfg);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}