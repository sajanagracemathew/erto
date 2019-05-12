using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ertosystem
{
    public partial class testInstructions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["timeout"] != null)
            {
                lbstatus.Text = "Your test time expired, please try again!";
                btnStartTest.Visible = false;
                home_btn.Visible = false;
            }
           
        }

        protected void home_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/erto_userforms/userhome.aspx");
        }

        protected void btnStartTest_Click(object sender, EventArgs e)
        {
            Response.Redirect("testInstructions.aspx");
        }
    }
}