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
            obj.Email1 = tbemail.Text;
            obj.Msg = lbmsg.Text;
            obj.FetchEmail();
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    //DetailsView1.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    MailMessage mm = new MailMessage("sajanagrace@gmail.com",tbemail.Text);
                    //msg1.From = new MailAddress("jobinbennyuppoottil@gmail.com");
                    //msg1.To.Add(t1.Text);
                    mm.Subject = "Your Password";
                    mm.Body = string.Format("Hello : <h1>{0}</h1> is your Email id <br/>your password is <h1>{1}</h1>",obj.Email1,obj.Password);
                    mm.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    
                    NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "sajanagrace@gmail.com";//Your Email ID  
                    ntwd.Password = "abcd";  
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = ntwd;
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Send(mm);

                    lbmsg.Text = "Your Password has been sent to " + tbemail.Text;
                    lbmsg.ForeColor = Color.ForestGreen;  
                    
                }
            }
        }
    }
}