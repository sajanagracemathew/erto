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
    public partial class drivinglicense : System.Web.UI.Page
    {
        DrivingLicense obj = new DrivingLicense();
        protected void Page_Load(object sender, EventArgs e)
        {
            tbdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
            obj.Dl_id = Session["user"].ToString();
            obj.Uid = tbuserid.Text;
            obj.Name = tbname.Text;
            obj.Dob = tbdob.Text;
            obj.Address = tbaddress.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text = dt1.Rows[0]["user_id"].ToString();
                tbname.Text = dt1.Rows[0]["name"].ToString();
                tbdob.Text = dt1.Rows[0]["dob"].ToString();
                tbaddress.Text = dt1.Rows[0]["address"].ToString();

            }
        }

        protected void apply_btn_Click(object sender, EventArgs e)
        {
            
        }
    }
}