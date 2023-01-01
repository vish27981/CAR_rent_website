using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Session["pass"] = null;
        Session.RemoveAll();
        if (!Page.IsPostBack)
        {
        }
        if (Session.Count == 0)
        {
            Response.Redirect("Home.aspx");
            return;
        }
        Response.Redirect("Home.aspx");
    }
}