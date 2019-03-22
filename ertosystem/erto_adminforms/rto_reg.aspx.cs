using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

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

            
            robj.Rname = tbrtoname.Text;
            robj.Rdob = tbrtodob.Text;
            robj.Raddress = tbrtoaddress.Text;
            robj.Rmobile = tbrtomobile.Text;
            robj.Remail = tbrtoemail.Text;
            robj.Rdoj = tbrtodoj.Text;
            robj.Rphoto = FileUpload2.FileName;
           
            robj.Rusername = rtoid.Text;
            robj.Rpassword = tbrtopassword.Text;
            robj.InsertRto_Parameter();
            robj.InsertLogin();

            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("~/Images" + FileUpload2.FileName));
                robj.Rphoto = FileUpload2.FileName + "";
            }

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