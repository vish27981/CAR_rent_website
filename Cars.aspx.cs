using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cars : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* Session["name"] = null;
        Session["pass"] = null;
        Response.Redirect("Cars.aspx");*/
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Book Now")
        {
            Response.Redirect("Booking.aspx?carname=" + e.CommandArgument.ToString()+"&price="+e.CommandArgument.ToString());
           
        }
       

    }
}

