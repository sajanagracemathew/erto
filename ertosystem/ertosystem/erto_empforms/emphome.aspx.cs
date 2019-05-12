using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_empforms
{
    public partial class emphome : System.Web.UI.Page
    {
        Employ obj = new Employ();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Fetchid = Session["employee"].ToString();
            
            obj.Ename = lbname1.Text;
            obj.Edob = lbdob1.Text;
            obj.Eaddress = lbaddress2.Text;
            obj.Emob = lbmob2.Text;
            obj.FetchDetails();
           

            DataTable dt1 = new DataTable();
            dt1 = obj.FetchDetails();
            if (dt1.Rows.Count > 0)
            {
                //lbuserid1.Text = Convert.ToString(dt1.Rows[0][0]);
                lbname1.Text = Convert.ToString(dt1.Rows[0][0]);
                lbdob1.Text = Convert.ToString(dt1.Rows[0][1]);
                lbaddress2.Text = Convert.ToString(dt1.Rows[0][2]);
                lbmob2.Text = Convert.ToString(dt1.Rows[0][3]);
                if (dt1.Rows[0]["Photo"].ToString().Length > 1)
                {
                    empimg.ImageUrl = dt1.Rows[0]["Photo"].ToString();
                }
                else
                {
                    empimg.ImageUrl = "Images_erto/user_img.jpg";
                }

            }
        }
    }
}