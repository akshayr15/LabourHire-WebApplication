using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
          
        }

        protected void del(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            String sql = "DELETE FROM Register where LabourId='" + DropDownList1.SelectedItem.Text + "' ";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            if (cmd.ExecuteNonQuery().ToString() == "1")
            {
                ListView1.DataBind();
                Label1.Text = "Client has been Removed";
            }
        }

        protected void Update(object sender, EventArgs e)
        {
            Response.Redirect("ClientRegistraition.aspx");
        }

        protected void Add(object sender, EventArgs e)
        {
            Response.Redirect("Registraition.aspx");
        }
    }
}