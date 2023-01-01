using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label4.Text = Session["name"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String dcon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\cardata.mdf;Integrated Security=True";
        String query = "select * from userinfo where  password=@password";
          SqlConnection con = new SqlConnection(dcon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String pass;
        pass = ds.Tables[0].Rows[0]["password"].ToString();
        con.Close();
        if (pass == TextBox1.Text)
        {
            if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
            {
                String updatepass = "update userinfo set password '" + TextBox2.Text + "'where name='" + Label4.Text + "'";
                String dcon1 = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\Databasemanager.mdf;Integrated Security=True";

                SqlConnection con1 = new SqlConnection(dcon1);
                con1.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = con1;
                cmd1.ExecuteNonQuery();
                Session.Abandon();
                Response.Redirect("successpass.aspx");
            }
            else
            {
                Label4.Text = "New Password and Resend Password Not matched/Blanck Password not accepted ";
            }



        }
        else {
            Label4.Text = " Invalid Username and Password - Cannot change PAssword with User Authentication  ";
        }
    }
}