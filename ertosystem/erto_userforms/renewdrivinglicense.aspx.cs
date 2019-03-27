using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ertosystem.erto_userforms
{
    public partial class drivinglicenseappln : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbcurrentdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
            if (!String.IsNullOrEmpty(Session["user"].ToString()))
            {

                //Read values from session
                string valueA = Session["user"].ToString();

            }
        }

        protected void renew_btn_Click(object sender, EventArgs e)
        {

        }
    }
}