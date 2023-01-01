using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\cardata.mdf;Integrated Security=True");
        SqlCommand cmd=new SqlCommand("select * from userinfo where name=@name and password=@password",con);
            cmd.Parameters.AddWithValue("@name",TextBox1.Text);
             cmd.Parameters.AddWithValue("@password",TextBox2.Text);
        SqlDataAdapter sda=new SqlDataAdapter(cmd);
        DataTable dt=new DataTable();
        sda.Fill(dt);
        con.Open();
        int i= cmd.ExecuteNonQuery();
        con.Close();

        if(dt.Rows.Count>0)
        {
            Session["name"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            Response.Redirect("Cars.aspx");
            Session.RemoveAll();
        }
        else
        {
        Label1.Text = "You Are Not Registered First Sign Up";
            Label1.ForeColor=System.Drawing.Color.Red;
        }
    }
}