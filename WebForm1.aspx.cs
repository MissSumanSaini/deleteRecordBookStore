using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace deleteRecordBookStore
{
    public partial class WebForm1 : System.Web.UI.Page
     {
        SqlConnection con = new SqlConnection("Data Source=SUMAN\\SQLEXPRESS; initial catalog=Test250322; Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }

        public void BindData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Product ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            grd.DataSource = dt;
            grd.DataBind();

        }
    protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Product(ProductName,ProductPrice) values('"+txtProudtName.Text+"','"+TxtProductPrice.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();

        }

        protected void grd_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Product where ProductId='" + e.CommandArgument+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();
        }
    }
}