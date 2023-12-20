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


namespace Self
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Registration();

        }
        private void Registration()
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["VPfashionConnectionString2"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into tbluser(NAME,SURNAME,ADDRESS,CITY,MOBILE,EMAIL,PASSWORD ,Gender) values(@NAME,@SURNAME,@ADDRESS,@CITY,@MOBILE,@EMAIL,@PASSWORD ,@Gender)", conn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();

                }
                cmd.Parameters.AddWithValue("@NAME", txtname.Text);
                cmd.Parameters.AddWithValue("@SURNAME", txtsurname.Text);
                cmd.Parameters.AddWithValue("@ADDRESS", txtaddress.Text);
                cmd.Parameters.AddWithValue("@CITY", txtcity.Text);
                cmd.Parameters.AddWithValue("@MOBILE", txtmobile.Text);
                cmd.Parameters.AddWithValue("@EMAIL", txtEmailid.Text);
                cmd.Parameters.AddWithValue("@PASSWORD", txtpass.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.Text);

                cmd.ExecuteNonQuery();
                conn.Close();
                clr();
                Response.Write("<script>alert('Sucess')</script>");



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");

            }
            
        }
        private void clr()
        {
            txtname.Text = String.Empty;
            txtsurname.Text = String.Empty;
            txtaddress.Text = String.Empty;
            txtcity.Text = String.Empty;
            txtmobile.Text = String.Empty;
            txtEmailid.Text = String.Empty;
            txtpass.Text = String.Empty;
            ddlGender.SelectedIndex = -1;
            txtname.Focus();

        }
    }
}