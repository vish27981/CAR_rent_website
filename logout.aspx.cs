using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["id"] = null;
        Session["userinfo"] = "false";
        Session["name"] = null;
        Session["password"] = null;

        if (Session["uid"] == null && Session["userinfo"] == "false")
        {
            Response.Redirect("Home.aspx");
        }
    }
   
}