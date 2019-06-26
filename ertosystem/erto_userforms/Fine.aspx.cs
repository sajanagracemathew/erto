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
    public partial class Fine : System.Web.UI.Page
    {
        Payment obj = new Payment();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.P_id = Session["user"].ToString();
            obj.Uid = tbuserid.Text;
            obj.Username = tbusername.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text = dt1.Rows[0]["user_id"].ToString();
                tbusername.Text = dt1.Rows[0]["username"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Uid = tbuserid.Text;
            obj.Veh_no = tbveh_no.Text;
            obj.Fine = tbfine.Text;
            if (rb_debit.Checked)
            {
                obj.Pay_option = rb_debit.Text.ToString();
            }
            else if (rb_netbanking.Checked)
            {
                obj.Pay_option = rb_netbanking.Text.ToString();
            }

            obj.Insert_fineParameter();
            Label1.Text = "Payment Successful";

            tbuserid.Text = "";
            tbveh_no.Text = "";
            tbfine.Text = "";
        }

        protected void finereceipt_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/erto_userforms/finereceipt.aspx");
        }
    }
}