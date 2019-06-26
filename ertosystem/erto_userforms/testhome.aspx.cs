using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_userforms
{
    public partial class testhome : System.Web.UI.Page
    {
        LearnersLicense obj = new LearnersLicense();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rtotest_btn_Click(object sender, EventArgs e)
        {
            obj.Uid = tbuser_id.Text;
            obj.Testid = tbtest_id.Text;
            obj.InsertTestresult_Parameter();
            Response.Redirect("~/testInstructions.aspx");
        }
    }
}