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
    public partial class user_register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "insert into Customer_Reg(Name,Email,Mob_no,Username,Password) values (@Name,@Email,@Mob_no,@Username,@Password)";
            con.Open();
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Mob_no", txtmoblie.Text);
            cmd.Parameters.AddWithValue("@Username", txtuser.Text);
            cmd.Parameters.AddWithValue("@Password", txtpass.Text);
            int index = cmd.ExecuteNonQuery();
            if (index > 0)
            {
                Response.Write("<script>alert('Congrats Your Account Created Successfuly..!!')</script>");
            }

            con.Close();
        }
    }
   
}