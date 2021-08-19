using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            String sql = "insert into Register(LabourId,Name,Email,ContactNumber,Password,ConfirmPassword)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(sql,con);
            con.Open();
            if (cmd.ExecuteNonQuery().ToString() == "1")
            {
                Response.Redirect("ClientRegistration.aspx");
            }
            else
            {
                Response.Write("INSERTION FAILED");
            }
        }
    }
}