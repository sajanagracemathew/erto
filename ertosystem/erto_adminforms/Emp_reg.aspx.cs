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

          
            Response.Write("Registered Successfully");

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
    }
}