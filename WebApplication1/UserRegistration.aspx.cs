using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = Security.GetHash256(TextBox4.Text, TextBox3.Text);
            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            string sql = "Insert into UserRegister (Name,ContactNumber,Email,Password)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+password+"')";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            if (cmd.ExecuteNonQuery().ToString() == "1")
            {
                Label1.Text = "Success";
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = "Failed";
            }
        }
    }
}