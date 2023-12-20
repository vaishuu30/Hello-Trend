using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;

namespace Self.Admin
{
    public partial class adminlogin : System.Web.UI.Page

    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["VPfashionConnectionString2"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Remove("UserName");

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(IsFormValid())
            {
                //Response.Write("<script>alert('Sucess');</script>");

                try
                {
                    SqlCommand cmd = new SqlCommand("select Username,Password from adminuser where Username=@Username and Password=@password", conn);
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    cmd.Parameters.AddWithValue("@UserName", txtuserid.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtpass.Text.Trim());

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["UserName"] = dr.GetValue(0).ToString();
                           
                            Response.Write("<script>alert('Login Successful');</script>");
                            Response.Redirect("AdminHome.aspx");
                        }
                    }

                    else
                    {
                        Response.Write("<script>alert('Invalid Login.... error');</script>");
                        // Response.Redirect("~/Home.aspx");

                        txtuserid.Text=String.Empty;
                        txtpass.Text=String.Empty;
                        txtuserid.Focus();





                    }




                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('"+ex.Message+"');</script>");


                }
                
            }
            else
            {
                //Response.Write("<script>alert('Validation error');</script>");
            }

        }

        private bool IsFormValid()
        {
            if(txtuserid.Text==String.Empty)
            {
                Response.Write("<script>alert('Username is Required');</script>");
                txtuserid.Text = String.Empty;
                txtuserid.Focus();
                return false;


            }
            if(txtpass.Text == String.Empty)
            {
                Response.Write("<script>alert('Password is Required');</script>");
                txtpass.Text = String.Empty;
                txtpass.Focus();
                return false;

            }
            return true;
        }
    }
}