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
    public partial class item_details : System.Web.UI.Page
    {
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        int id;
        int item_quantity;
        string item_name, rate, discount, /*quantity*/ image;

        //protected void txtquantity_TextChanged(object sender, EventArgs e)
        //{
        //    item_quantity = txtquant;
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("menu.aspx");
                }
                else
                {
                    id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    con = new SqlConnection(cnfg);
                    con.Open();

                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from Item where Item_Id=" + id + "";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    d1.DataSource = dt;
                    d1.DataBind();
                    con.Close();
                }

            }



            //if (!IsPostBack)
            //{
            //    if (Request.QueryString["id"] == null)
            //    {
            //        Response.Redirect("menu.aspx");
            //    }

            //    else
            //    {
            //        id = Convert.ToInt32(Request.QueryString["id"].ToString());
            //        DataTable dt = getData("select * from Item where Item_Id = " + id);

            //        Repeater1.DataSource = dt;
            //        Repeater1.DataBind();

            //    }


        }
        //private DataTable getData(String query)
        //{
        //    SqlConnection con = new SqlConnection(cnfg);
        //    SqlDataAdapter da = new SqlDataAdapter(query, con);
        //    DataTable dt = new DataTable();

        //    da.Fill(dt);

        //    return dt;
        //}

        protected void addtocart_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnfg);
            con.Open();
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Item where Item_Id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow dr in dt.Rows){

                item_name = dr["Item_Name"].ToString();
                rate = dr["Rate"].ToString();
                discount = dr["Discount"].ToString();
                //quantity = dr["Quantity"].ToString();
                image = dr["Image"].ToString();
            }
            con.Close();
            if (Request.Cookies["aa"] == null)
            {
                item_quantity = Convert.ToInt32(txtquantity.Text);
                Response.Cookies["aa"].Value = item_name.ToString() + ", " + rate.ToString() + "," + discount.ToString() + "," + image.ToString()+","+ item_quantity;
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                item_quantity = Convert.ToInt32(txtquantity.Text);
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value +"|"+ item_name.ToString() + ", " + rate.ToString() + "," + discount.ToString() + "," + image.ToString()+","+ item_quantity;
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            
        }
    }
}