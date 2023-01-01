using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class contactus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\Databasemanager.mdf;Integrated Security=True");
        con.Open();
        Response.Write("done");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into contact values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "') ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Clr();
        Showdata();
    }

    private void Showdata()
    {
     
    }

    private void Clr()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
       
    }
}