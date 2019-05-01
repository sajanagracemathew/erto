using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Drawing;


namespace ertosystem.erto_userforms
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        Logins obj = new Logins();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getpass_btn_Click(object sender, EventArgs e)
        {
            
            obj.Email = tbemail.Text;
            string username="";
            string password="";
            DataTable dt1 = new DataTable();
            dt1 = obj.FetchEmail();
            if (dt1.Rows.Count > 0)
            {
                username = dt1.Rows[0]["username"].ToString();
                password = dt1.Rows[0]["password"].ToString();
        

            }


            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    //DetailsView1.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    MailMessage msg1 = new MailMessage();
                    msg1.From = new MailAddress("sajanagracerto@gmail.com");
                    msg1.To.Add(tbemail.Text);
                    msg1.Subject = "Password Recovery";
                    msg1.Body = string.Format("Hello : <h1>{0}</h1> is your username <br/>Your password is <h1>{1}</h1>", username, password);

                    msg1.IsBodyHtml = true;

                    SmtpClient smt = new SmtpClient();
                    smt.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "sajanagracerto@gmail.com";//Your Email ID  
                    ntwd.Password = "ertomathew9337"; //   
                    smt.UseDefaultCredentials = true;
                    smt.Credentials = ntwd;
                    smt.Port = 587;
                    smt.EnableSsl = true;
                    smt.Send(msg1);
                    // lblMessage.Text = "Email Sent Successfully";  
                    // lblMessage.ForeColor = System.Drawing.Color.ForestGreen;  
                    Response.Write("<script>alert('Mail sent successfully')</script>");
                }
            }

        }
    }
}