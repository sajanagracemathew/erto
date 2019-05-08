using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_empforms
{
    public partial class changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changepass_btn_Click(object sender, EventArgs e)
        {
            EmpRegistration obj = new EmpRegistration();
            obj.Eusername= Session["employee"].ToString();
            obj.Newpwd = tbconfirm_pass.Text;
            obj.UpdateEmployregPassword();
            obj.UpdateEmployloginPassword();
            if (tbnew_pass.Text == tbconfirm_pass.Text)
            {
                lbsuccess.Visible = true;
            }
        }
    }
}