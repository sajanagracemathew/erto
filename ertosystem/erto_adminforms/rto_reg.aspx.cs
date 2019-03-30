using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;
using System.Data;
using System.IO;

namespace ertosystem.erto_adminforms
{
    public partial class Rto_reg : System.Web.UI.Page
    {
        RtoRegistration robj = new RtoRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                robj.GenerateAutoID();
                rtoid.Text = robj.Rusername;
            }
        }
       

        protected void submit1_btn_Click(object sender, EventArgs e)
        {

            if (rbrtomale.Checked)
            {
                robj.Rgender = rbrtomale.Text.ToString();
            }
            else if (rbrtofemale.Checked)
            {
                robj.Rgender = rbrtofemale.Text.ToString();
            }
            robj.Rname = tbrtoname.Text;
            robj.Rdob = tbrtodob.Text;
            robj.Raddress = tbrtoaddress.Text;
            robj.Rmobile = tbrtomobile.Text;
            robj.Remail = tbrtoemail.Text;
            robj.Rdoj = tbrtodoj.Text;
            robj.Rphoto = FileUpload2.FileName;
            robj.Rusername = rtoid.Text;
            robj.Rpassword = tbrtopassword.Text;

            String filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/Images") + "\\" + rtoid.Text + ".jpg";
                FileUpload2.PostedFile.SaveAs(src);
                string picpath = "~/Images/" + rtoid.Text + ".jpg";
                robj.Rphoto = picpath;
            }
            robj.InsertRto_Parameter();
            robj.InsertLogin();

            Response.Write("Registered Successfully");

            tbrtoname.Text = "";
            tbrtodob.Text = "";
            tbrtoaddress.Text = "";
            tbrtomobile.Text = "";
            tbrtoemail.Text = "";
            tbrtodoj.Text = "";
            rtoid.Text = "";
            tbrtopassword.Text = "";



        }
       
    }
}