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
    public partial class finereceipt : System.Web.UI.Page
    {
        Payment obj = new Payment();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.P_id = Session["user"].ToString();
            DataTable dt1 = new DataTable();
            dt1 = obj.finereceipt();
            if (dt1.Rows.Count > 0)
            {
                lbl_name.Text = dt1.Rows[0][0].ToString();
                lbl_address.Text = dt1.Rows[0][1].ToString();
                lbuserid1.Text = dt1.Rows[0][2].ToString();
                lbl_amount.Text = dt1.Rows[0][3].ToString();
                lbdate1.Text = dt1.Rows[0][4].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void back_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/erto_userforms/Fine.aspx");
        }
    }
}