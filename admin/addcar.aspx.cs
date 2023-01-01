using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin_addcar : System.Web.UI.Page
{ 
    SqlConnection con;
        string a,b;
    
    protected void Page_Load(object sender, EventArgs e)
    {
      /*  if (Session["login"] != null && Session["user"] != null && Session["login"].ToString() == "true" && Session["user"].ToString() == "admin")
        {

        }
        else
        {
            Response.Redirect("loginadmin.aspx");
        }*/
   
    }
    protected void Button1_Click(object sender, EventArgs e)
       {
        a=Class1.GetRandomPassword(10).ToString();
       
        FileUpload1.SaveAs(Request.PhysicalApplicationPath+"image" + a + FileUpload1.FileName.ToString());
        b="image"+a+FileUpload1.FileName.ToString();
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\cardata.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into car values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+b.ToString()+"')";
        cmd.ExecuteNonQuery();
        con.Close();
       }


}

  

   
    
