using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class booking : System.Web.UI.Page
{
   
    static String source;
    static String dest;

    protected void Page_Load(object sender, EventArgs e)
    {
       string carname = Request.QueryString["carname"];
        Label4.Text = carname;

        string price = Request.QueryString["price"];
        Label5.Text = price;
       
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Now.Date;
        }
        
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        source = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" +
           Calendar1.SelectedDate.Day + "" + DropDownList1.Text;
        dest = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" +
             Calendar1.SelectedDate.Day + "" + DropDownList2.Text;
        Response.Write(source);

        String updatepass = "insert into booking (carname,date,source,dest,amount,cardno,validtill,cvv)values('"+Label4.Text+"','"+Label6.Text+"','"+DropDownList1.Text+"','"+DropDownList2.Text+"','"+Label5.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"') ";

        String dcon1 = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\cardata.mdf;Integrated Security=True";
        
        SqlConnection scon1 = new SqlConnection(dcon1);
        scon1.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText =updatepass;
        cmd1.Connection = scon1;
        cmd1.ExecuteNonQuery();
        Response.Redirect("Success.aspx");
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label6.Text =   Calendar1.SelectedDate.ToShortDateString();
    }
}