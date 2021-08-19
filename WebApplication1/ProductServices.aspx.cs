using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sve_btn(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            String path = Server.MapPath("images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "images/" + FileUpload1.FileName;
                    if (DropDownList1.SelectedItem.Text == "Cables")
                    {
                        string sql = "Insert into Cables (ProductId,ProductName,ProducType,Description,Price,image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                     
                    }
                    else if (DropDownList1.SelectedItem.Text == "BathShower")
                    {
                        string sql = "Insert into BathShower (ProductId,ProductName,ProducType,Description,Price,image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    else if (DropDownList1.SelectedItem.Text == "Batteries")
                    {
                        string sql = "Insert into Batteries (ProductId,ProductName,ProducType,Description,Price,image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    else if (DropDownList1.SelectedItem.Text == "Cuttingtools")
                    {
                        string sql = "Insert into Cuttingtools (ProductId,ProductName,ProducType,Description,Price,image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    else
                    {
                        Label1.Text = "Failed";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            String path = Server.MapPath("images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "images/" + FileUpload1.FileName;
                    if (DropDownList1.SelectedItem.Text == "Cables")
                    {
                        string sql = "update  Cables set ProductName = '" + TextBox2.Text + "',ProducType = '" + DropDownList1.SelectedItem.Text + "',Description = '" + TextBox3.Text + "',Price = '"+ TextBox4.Text+"',Image = '"+name+ "' where ProductId = '" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }

                    }
                    else if (DropDownList1.SelectedItem.Text == "BathShower")
                    {
                        string sql = "update  BathShower set ProductName = '" + TextBox2.Text + "',ProducType = '" + DropDownList1.SelectedItem.Text + "',Description = '" + TextBox3.Text + "',Price = '" + TextBox4.Text + "',Image = '" + name + "' where ProductId = '" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    else if (DropDownList1.SelectedItem.Text == "Batteries")
                    {
                        string sql = "update  Batteries set ProductName = '" + TextBox2.Text + "',ProducType = '" + DropDownList1.SelectedItem.Text + "',Description = '" + TextBox3.Text + "',Price = '" + TextBox4.Text + "',Image = '" + name + "' where ProductId = '" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    else if (DropDownList1.SelectedItem.Text == "Cuttingtools")
                    {
                        string sql = "update  Cuttingtools set ProductName = '" + TextBox2.Text + "',ProducType = '" + DropDownList1.SelectedItem.Text + "',Description = '" + TextBox3.Text + "',Price = '" + TextBox4.Text + "',Image = '" + name + "' where ProductId = '" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            con.Close();
                            Label1.Text = "Success";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    else
                    {
                        Label1.Text = "Failed";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }

                }
            }
        }
    }
}