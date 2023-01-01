using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_manageuser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
       /* if (Session["login"] != null && Session["user"] != null && Session["login"].ToString() == "true" && Session["user"].ToString() == "admin")
        {

        }
        else
        {
            Response.Redirect("loginadmin.aspx");
        }*/
    }

    public void delete(object sender, GridViewDeleteEventArgs e) 
    {
        connection();
        int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        HiddenField1.Value = "Delete";
        query = "userinfo";
        cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", HiddenField1.Value).ToString();
        cmd.Parameters.AddWithValue("id", SqlDbType.Int).Value = id;
        cmd.ExecuteNonQuery();
        con.Close();
        GetDataItem();
    }

    private void connection()
    {
        
    }

    public string query { get; set; }
}