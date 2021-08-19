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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
            
            
            
                if (Session["LabourType"] == "Electrician" && Session["Location"]=="Britomart")
                {
                    SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                    SqlDataAdapter sda = new SqlDataAdapter("Select * from Britomart_Electrician", con);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }
            else if (Session["LabourType"] == "Plumber" && Session["Location"] == "Britomart")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Britomart_Plumber", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else if (Session["LabourType"] == "Carpenter" && Session["Location"] == "Britomart")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Britomart_Carpenter", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else if (Session["LabourType"] == "Electrician" && Session["Location"] == "Kingsland")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Kingsland_Electrician", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else if (Session["LabourType"] == "Carpenter" && Session["Location"] == "Kingsland")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Kingsland_Carpenter", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else if (Session["LabourType"] == "Plumber" && Session["Location"] == "Kingsland")
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Kingsland_Plumber", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
           
            

        

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        



        }
    }
}