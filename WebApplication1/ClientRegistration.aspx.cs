using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            String path = Server.MapPath("images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if(ext==".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "images/" + FileUpload1.FileName;
                    if ((DropDownList3.SelectedItem.Text == "Britomart") && (DropDownList1.SelectedItem.Text == "Electrician"))
                    {
                        string sql = "Insert into Britomart_Electrician (LabourId,Name,LabourType,Description,Price,Image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedItem.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Britomart") && (DropDownList1.SelectedItem.Text == "Plumber"))
                    {
                        SqlConnection cons = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
                        string sqls = "Insert into Britomart_Plumber (LabourId,Name,LabourType,Description,Price,Image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedItem.Text + "','" + name + "')";
                        SqlCommand cmds = new SqlCommand(sqls, cons);
                        cons.Open();
                        cmds.ExecuteNonQuery();
                        cons.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Britomart") && (DropDownList1.SelectedItem.Text == "Carpenter"))
                    {
                        string sql = "Insert into Britomart_Carpenter (LabourId,Name,LabourType,Description,Price,Image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedItem.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Kingsland") && (DropDownList1.SelectedItem.Text == "Electrician"))
                    {
                        string sql = "Insert into Kingsland_Electrician (LabourId,Name,LabourType,Description,Price,Image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedItem.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Kingsland") && (DropDownList1.SelectedItem.Text == "Plumber"))
                    {
                        string sql = "Insert into Kingsland_Plumber (LabourId,Name,LabourType,Description,Price,Image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedItem.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Kingsland") && (DropDownList1.SelectedItem.Text == "Carpenter"))
                    {
                        string sql = "Insert into Kingsland_Carpenter (LabourId,Name,LabourType,Description,Price,Image) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedItem.Text + "','" + name + "')";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                }
                else
                {
                    Label1.Text = "not correct file";
                }
            }
            else
            {
                Label1.Text = "Please Choose file";
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
                    if ((DropDownList3.SelectedItem.Text == "Britomart") && (DropDownList1.SelectedItem.Text == "Electrician"))
            {
                string sql = "update  Britomart_Electrician set Name= '" + TextBox2.Text + "',LabourType='" + DropDownList1.SelectedItem.Text + "',Description='" + TextBox2.Text + "',Price='"+DropDownList2.SelectedItem.Text+"',Image='"+name+ "' where LabourId='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Success";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
                    else if ((DropDownList3.SelectedItem.Text == "Britomart") && (DropDownList1.SelectedItem.Text == "Plumber"))
                            {
                        string sql = "update  Britomart_Plumber set Name= '" + TextBox2.Text + "',LabourType='" + DropDownList1.SelectedItem.Text + "',Description='" + TextBox2.Text + "',Price='" + DropDownList2.SelectedItem.Text + "',Image='" + name + "' where LabourId='" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Britomart") && (DropDownList1.SelectedItem.Text == "Carpenter"))
                    {
                        string sql = "update  Britomart_Carpenter set Name= '" + TextBox2.Text + "',LabourType='" + DropDownList1.SelectedItem.Text + "',Description='" + TextBox2.Text + "',Price='" + DropDownList2.SelectedItem.Text + "',Image='" + name + "' where LabourId='" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Kingsland") && (DropDownList1.SelectedItem.Text == "Electrician"))
                    {
                        string sql = "update  Kingsland_Electrician set Name= '" + TextBox2.Text + "',LabourType='" + DropDownList1.SelectedItem.Text + "',Description='" + TextBox2.Text + "',Price='" + DropDownList2.SelectedItem.Text + "',Image='" + name + "' where LabourId='" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Kingsland") && (DropDownList1.SelectedItem.Text == "Plumber"))
                    {
                        string sql = "update  Kingsland_Plumber set Name= '" + TextBox2.Text + "',LabourType='" + DropDownList1.SelectedItem.Text + "',Description='" + TextBox2.Text + "',Price='" + DropDownList2.SelectedItem.Text + "',Image='" + name + "' where LabourId='" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else if ((DropDownList3.SelectedItem.Text == "Kingsland") && (DropDownList1.SelectedItem.Text == "Carpenter"))
                    {
                        string sql = "update  Kingsland_Carpenter set Name= '" + TextBox2.Text + "',LabourType='" + DropDownList1.SelectedItem.Text + "',Description='" + TextBox2.Text + "',Price='" + DropDownList2.SelectedItem.Text + "',Image='" + name + "' where LabourId='" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Label1.Text = "Success";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                }
                else
                {
                    Label1.Text = "not correct file";
                }
            }
            else
            {
                Label1.Text = "Please Choose file";
            }
        }
    }
}