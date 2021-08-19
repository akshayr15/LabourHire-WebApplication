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
    public partial class WebForm17 : System.Web.UI.Page
    {
        
       
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = Request.QueryString["Email"];

            string password = Security.GetHash256(TextBox1.Text, a);

            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            con.Open();
            string sql = "update UserRegister set Password='" + password + "' where Email='" + a + "' ";
            SqlCommand cmd = new SqlCommand(sql, con);

            if (cmd.ExecuteNonQuery().ToString() == "1")
            {
                Label1.Text = "Password SuccessFully Reset You can Login Now";
            }
            else
            {
                Label1.Text = "Failed Try Again";
            }
        }
    }
}