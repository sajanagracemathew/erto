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
            obj.Userid = lbuserid1.Text;
            //Session["uid"] = lbuserid1.Text;
            obj.Hname = lbname1.Text;
            obj.Hdob = lbdob1.Text;
            obj.Haddress = lbaddress2.Text;
            obj.Hmobile_no = lbmob2.Text;
            obj.ExecuteSelect();
           // lbuser_id.Text = Session["uid"].ToString();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                lbuserid1.Text= Convert.ToString(dt1.Rows[0][0]);
                lbname1.Text = Convert.ToString(dt1.Rows[0][1]);
                lbdob1.Text = Convert.ToString(dt1.Rows[0][2]);
                lbaddress2.Text = Convert.ToString(dt1.Rows[0][3]);
                lbmob2.Text = Convert.ToString(dt1.Rows[0][4]);
                
                if(dt1.Rows[0]["photo"].ToString().Length>1)
                {
                    userimg.ImageUrl = dt1.Rows[0]["photo"].ToString();
                }
                else
                {
                    userimg.ImageUrl = "Images_erto/user_img.jpg";
                }
            }
        }
    }
}