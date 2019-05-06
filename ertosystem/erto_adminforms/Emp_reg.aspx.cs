using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Drawing;

namespace ertosystem.erto_adminforms
{
    public partial class Emp_reg : System.Web.UI.Page
    {
        EmpRegistration eobj = new EmpRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                eobj.GenerateAutoID();
                empid.Text = eobj.Eusername;
            }
        }

        protected void submit2_btn_Click(object sender, EventArgs e)
        {
            if (rbempmale.Checked)
            {
                eobj.Egender = rbempmale.Text.ToString();
            }
            else if (rbempfemale.Checked)
            {
                eobj.Egender = rbempfemale.Text.ToString();
            }
            eobj.Ename = tbempname.Text;
            eobj.Edob = tbempdob.Text;
            eobj.Eaddress = tbempaddress.Text;
            eobj.Emobile = tbempmobile.Text;
            eobj.Eemail = tbempemail.Text;
            eobj.Equal = tbempqual.Text;
            eobj.Edoj = tbempdoj.Text;
            eobj.Ephoto = FileUpload3.FileName;
            eobj.Eusername = empid.Text;
            eobj.Epassword = tbemppassword.Text;

            String filename = Path.GetFileName(FileUpload3.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/Images") + "\\" + empid.Text + ".jpg";
                FileUpload3.PostedFile.SaveAs(src);
                string picpath = "~/Images/" + empid.Text + ".jpg";
                eobj.Ephoto = picpath;
            }
            eobj.InsertEmp_Parameter();
            eobj.InsertLogin1();


            ////// send mail ///////


            string email = "";
            string username = "";
            string password = "";
            DataTable dt1 = new DataTable();
            dt1 = eobj.SendEmail();
            if (dt1.Rows.Count > 0)
            {
                email = dt1.Rows[0]["Email"].ToString();
                username = dt1.Rows[0]["Username"].ToString();
                password = dt1.Rows[0]["Password"].ToString();


            }


            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    //DetailsView1.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    MailMessage msg1 = new MailMessage();
                    msg1.From = new MailAddress("sajanagracerto@gmail.com");
                    msg1.To.Add(email);
                    msg1.Subject = "Your Password";
                    msg1.Body = string.Format("Hello : <h1>{0}</h1> is your username <br/>Your password is <h1>{1}</h1>", username, password);

                    msg1.IsBodyHtml = true;

                    NetworkCredential login = new NetworkCredential("sajanagracerto@gmail.com", "ertomathew9337");

                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = login;
                    client.Send(msg1);
                    // lblMessage.Text = "Email Sent Successfully";  
                    // lblMessage.ForeColor = System.Drawing.Color.ForestGreen;  
                    Response.Write("<script>alert('Mail sent successfully')</script>");
                }
            }




            ///// clear fields

            //Response.Write("Registered Successfully");
            tbempname.Text = "";
            tbempdob.Text = "";
            tbempaddress.Text = "";
            tbempmobile.Text = "";
            tbempemail.Text = "";
            tbempqual.Text = "";
            tbempdoj.Text = "";
            empid.Text = "";
            tbemppassword.Text = "";




        }

        protected void send2_btn_Click(object sender, EventArgs e)
        {


            //eobj.Eemail = tbempemail.Text;
             }
    }
}