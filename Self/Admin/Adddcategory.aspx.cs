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



namespace Self.Admin
{
    public partial class Adddcategory : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["VPfashionConnectionString2"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"]!=null)
            {
                if(!IsPostBack)
                {
                    //BindingView();

                }


            }
            else
            {
                Response.Redirect("adminlogin.aspx");

            }
              

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into  category(CName) values(@CName)", conn);
            if(conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.Parameters.AddWithValue("@CName", txtCategory.Text.Trim());
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Added Sucessfull');</script>");
            //BindingView();
            txtCategory.Text =String.Empty;
            txtCategory.Focus();

        }
        private void BindingView()
        {
            SqlCommand cmd = new SqlCommand("select * from category", conn);
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();

            }


        }
    }
}