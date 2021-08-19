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
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if ( TextBox1.Text == "cables" || DropDownList1.SelectedItem.Text== "Cables")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Cables", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else if(TextBox1.Text == "bathshower" || DropDownList1.SelectedItem.Text == "BathShower")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from BathShower", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else if (TextBox1.Text == "batteries" || DropDownList1.SelectedItem.Text  == "Batteries")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Batteries", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else if ( TextBox1.Text == "cuttingtools" || DropDownList1.SelectedItem.Text == "Cuttingtools")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Cuttingtools", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
    }
}