using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace WebApplication1
{
    
    
    public partial class WebForm14 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["ProductId"];
            string ty = Request.QueryString["ProducType"];
            string pn = Request.QueryString["ProductName"];
            string d = Request.QueryString["Description"];
            string p = Request.QueryString["Price"];
            string i = Request.QueryString["image"];
            try
            {
                SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                string sql = "INSERT INTO Add_Cart (ProductId,ProductName,ProducType,Description,Price,image) values('" + id + "','" + pn + "','" + ty + "','" + d + "','" + p + "','" + i + "')";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception s)
            {
                Response.Write("Already Added To Cart");
                
            }
          
            

            SqlConnection con1 = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * from Add_Cart ",con1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            string sql = "Delete from Add_Cart ";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Cart is Cleared");
            SqlConnection con1 = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * from Add_Cart ", con1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }

    }
