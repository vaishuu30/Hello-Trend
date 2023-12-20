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
using System.IO;
using System.Text;


namespace Self.Admin
{
    public partial class additems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"]!=null)
            {
                if(!IsPostBack)
                {
                    BindCategory();

                }

            }
            else
            {
                Response.Redirect("Adminlogin.aspx");


            }

        }
        private string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["VPfashionConnectionString2"].ConnectionString;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(IsFormValidate())
            {
                //Insert Record

                //Insert image first
                FileUpload1.SaveAs(Server.MapPath("~/images/")+ FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/images/") + FileUpload2.FileName);
                FileUpload4.SaveAs(Server.MapPath("~/images/") + FileUpload4.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/images/") + FileUpload3.FileName);
                SqlConnection conn=new SqlConnection(GetConnectionString());
                SqlCommand cmd=new SqlCommand("insert into AdddItems(Iname,Image,Image1,Image2,Image3,CName)values(@Name,@Image,@Image1,@Image2,@Image3,@CName )", conn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                cmd.Parameters.AddWithValue("@Name",txtItemName.Text);
                cmd.Parameters.AddWithValue("@Image", "~/images/"+ FileUpload1.FileName );
               
                cmd.Parameters.AddWithValue("@Image1", "~/images/"+ FileUpload2.FileName );
                cmd.Parameters.AddWithValue("@Image2", "~/images/"+ FileUpload4.FileName );
                cmd.Parameters.AddWithValue("@Image3", "~/images/"+ FileUpload3.FileName );
                cmd.Parameters.AddWithValue("@CName", ddlCategory.SelectedItem.Text);
                cmd.BeginExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Items added Sucessfully');</script>");


            }
            else
            {

                Response.Write("<script>alert('Validation error');</script>");

            }

        }

        private bool IsFormValidate()
        {
            if(txtItemName.Text==String.Empty)
            {
                Response.Write("<script>alert('Item name is Required');</script>");
                txtItemName.Text = String.Empty;
                txtItemName.Focus();
                return false;


            }
            if (ddlCategory.SelectedItem.Text=="")
            {
                Response.Write("<script>alert('Category is Required');</script>");
                ddlCategory.Focus();
                return false;

            }
          
            return true;
        }

        private void BindCategory()
        {
            SqlConnection conn=new SqlConnection(GetConnectionString());
            SqlCommand cmd=new SqlCommand("select distinct CID,CName from category",conn);
            SqlDataAdapter da=new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CName";
                ddlCategory.DataValueField = "CID";
                ddlCategory.DataBind();

            }
            else
            {
                ddlCategory.DataSource = null;
                ddlCategory.DataBind();

            }
        }
      
    }
}