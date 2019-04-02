using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_userforms
{
    public partial class userhome : System.Web.UI.Page
    {
        UserHome obj = new UserHome(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Hid = Session["user"].ToString();
            obj.Hname = lbname1.Text;
            obj.Hdob = lbdob1.Text;
            obj.Haddress = lbaddress2.Text;
            obj.Hmobile_no = lbmob2.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                lbname1.Text = Convert.ToString(dt1.Rows[0][0]);
                lbdob1.Text = Convert.ToString(dt1.Rows[0][1]);
                lbaddress2.Text = Convert.ToString(dt1.Rows[0][2]);
                lbmob2.Text = Convert.ToString(dt1.Rows[0][3]);

            }
        }
    }
}