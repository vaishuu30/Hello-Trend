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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["VPfashionConnectionString2"].ConnectionString);
        private object ParentCommentIDAcess;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = ParentCommentIDAcess.GetAllDepartmentsandEmployee();
            GridView1.DataBind();
        }

        protected void btnCommentPublish_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spCommentInsert", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", Request.QueryString["User_name"].ToString());
            cmd.Parameters.AddWithValue("@CommanetMessage", textComment.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.DataSource = ParentCommentIDAcess.GetAllDepartmentsandEmployee();
            GridView1.DataBind();

        }
        protected void btnReplyParent_Click(object sender, EventArgs e)
        {
            GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
            Label lblchildCommentid = (Label)row.FindControl("lb1COmmenId");
            TextBox txtCommentParent = (TextBox)row.FindControl("textCommentReplyParent");
            SqlCommand cmd = new SqlCommand("spCommentReplyInsert", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", Request.QueryString["User_name"].ToString());
            cmd.Parameters.AddWithValue("@CommentMessage", txtCommentParent.Text);
            cmd.Parameters.AddWithValue("@ParentCommentID", lblchildCommentid.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            GridView1.DataSource = ParentCommentIDAcess.GetAllDepartmentsandEmployee();
            GridView1.DataBind();

        }
      
    }
}