using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_allcar : System.Web.UI.Page
{
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
      /* if(!this.IsPostBack)
       {
           this.BindDatalist();
           this.Bind();
       }*/
        
    }

    private void Bind()
    {
       /* DataList1.DataSource = ViewState["dt"] as DataTable;
        DataList1.DataBind();*/
    }

    private void BindDatalist()
    {
       /* using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Visual Studio\WebSite1\App_Data\cardata.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd=new SqlCommand ("SELECT *FROM  car"))
            {
                using (SqlDataAdapter sda= new SqlDataAdapter())
                {
                    cmd.Connection=con;
                    sda.SelectCommand=cmd;
                    using(DataTable dt=new DataTable())
                    {
                        sda.Fill(dt);
                        ViewState["dt"]=dt;

                    }
                }
            }
        }*/
    }


    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        /*int 0 = Convert.ToInt32(e.Item.ItemIndex);
        DataTable dt = ViewState["dt"] as
            DataTable;
        dt.Rows[0].Delete();
        dt.AcceptChanges();
        ViewState["dt"] = dt;
        DataList1.EditItemIndex = -1;
        Bind();*/
    }
}