using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

       /* if (Session["name"] == null)
        {
            Response.Redirect("User.aspx");
        }
        else
        {
            Response.Redirect("Home.aspx");
        }*/
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\cardata.mdf;Integrated Security=True");
        con.Open();
        Response.Write("done");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update userinfo('"+ TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "', '" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Clr();
        Showdata();
        if (Session["backurl"] != null && Session["backurl"].ToString() == "1")
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Redirect("Cars.aspx");
        }
    }

    private void Clr()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }

    private void Showdata()
    {

    }
  
}