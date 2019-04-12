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
    public partial class tax : System.Web.UI.Page
    {
        Payment tobj = new Payment();
        protected void Page_Load(object sender, EventArgs e)
        {
            tobj.P_id = Session["user"].ToString();
            tobj.Uid = tbuserid.Text;
            tobj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = tobj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text = dt1.Rows[0]["user_id"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tobj.Uid = tbuserid.Text;
            tobj.Veh_no = tbveh_no.Text;
            tobj.Tax = tbtax.Text;
            if(rb_debit.Checked)
            {
                tobj.Pay_option = rb_debit.Text.ToString();
            }
            else if(rb_netbanking.Checked)
            {
                tobj.Pay_option = rb_netbanking.Text.ToString();
            }

            tobj.Insert_taxParameter();
            Label1.Text = "Payment Successful";

            tbuserid.Text="";
            tbveh_no.Text = "";
            tbtax.Text = "";
        }
    }
}