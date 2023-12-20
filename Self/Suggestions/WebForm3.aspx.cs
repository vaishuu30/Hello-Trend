using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace Self.Suggetions
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["VPfashionConnectionString2"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("insert into UserTable values '" + TextBox1.Text + "','" + TextBox2 + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();

            Label1.Text = "You are Register";
            Response.Redirect("~/WebForm1.aspx");

        }
    }
}