using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        static int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT  COUNT (*) from Register where LabourId='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SqlConnection cons = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            SqlDataAdapter sdas = new SqlDataAdapter("SELECT  COUNT (*) from Admin where LabourId='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            DataTable dts = new DataTable();
            sdas.Fill(dts);
            string password = Security.GetHash256(TextBox2.Text, TextBox1.Text);
            SqlConnection connect = new SqlConnection("Data Source=09185379-AKSHAY;Initial Catalog=AssignementASP;Integrated Security=True");
            SqlDataAdapter adap = new SqlDataAdapter("SELECT  COUNT (*) from UserRegister where Email='" + TextBox1.Text + "' and Password='" + password + "'", connect);
            DataTable table = new DataTable();
            adap.Fill(table);

            if (dt.Rows[0][0].ToString() == "1")
            {

                Response.Redirect("ClientRegistration.aspx");
            }
            else if (dts.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("Dashbord.aspx");
            }
            else if (table.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("Shop.aspx");
            }

            else
            {
                Response.Write("Login Failed");
            }

        }

        protected void Frgt_btn_Click(object sender, EventArgs e)
        {
            MailMessage mailMessage = new MailMessage("akshay.hbk96@gmail.com", TextBox1.Text);
            StringBuilder sEmailBody = new StringBuilder();
            sEmailBody.Append("Hi!!,<br/><br/>");
            sEmailBody.Append("Please Click The Following Link to Rest Your Password");
            sEmailBody.Append("<br/><br/>");
            sEmailBody.Append("http://localhost:50591/ResetPassword.aspx?Email=" + TextBox1.Text + "");
            sEmailBody.Append("<br/><br/>");
            sEmailBody.Append("<b>LabourHire<b>");
            mailMessage.IsBodyHtml = true;
            mailMessage.Body = sEmailBody.ToString();
            mailMessage.Subject = "Reset Your Password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "akshay.hbk96@gmail.com",
                Password = "monster truck"
            };
            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);


        }



    }
}

    
