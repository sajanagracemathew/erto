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
    public partial class paymentpage : System.Web.UI.Page
    {
        Payment obj = new Payment();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dispfee = new DataTable();

                dispfee = obj.FetchFee();
                if (dispfee.Rows.Count > 0)
                {

                    d_applntype.DataSource = dispfee;
                    d_applntype.DataTextField = "Appln_Type";
                    d_applntype.DataValueField = "Appln_id";
                    d_applntype.DataBind();
                }
                d_applntype.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            obj.P_id = Session["user"].ToString();
            obj.Uid = tbuserid.Text;
            obj.Username = tbusername.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text = dt1.Rows[0]["user_id"].ToString();
                tbusername.Text=dt1.Rows[0]["username"].ToString();
            }
        }
        protected void ok_btn_Click(object sender, EventArgs e)
        {
             

        }
        protected void d_applntype_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj.Fee = d_applntype.SelectedValue.ToString();
            int fees= obj.DisplayFee();
            tbfee.Text = fees.ToString();

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void tbfee_TextChanged(object sender, EventArgs e)
        {

        }

        protected void paynow_btn_Click(object sender, EventArgs e)
        {
            obj.Uid = tbuserid.Text;
            obj.Appln_type = d_applntype.Text;
            obj.Fee = tbfee.Text;
            if (rb_debit.Checked)
            {

                obj.Pay_option = rb_debit.Text.ToString();
                //obj.InsertParameter();
                //Response.Redirect("~/erto_userforms/paymentconfirm.aspx");
            }
            else if (rb_netbanking.Checked)
            {
                obj.Pay_option = rb_netbanking.Text.ToString();
                //obj.InsertParameter();
                //Response.Redirect("~/erto_userforms/bankconfirm.aspx");
            }
            obj.InsertParameter();
            Label1.Text = "Payment successful";
            //obj.Vehicle_number = tbvehicle_no.Text;
            if (obj.Appln_type == "1" || obj.Appln_type == "2" || obj.Appln_type == "3")
            {
                HyperLink1.Visible = true;
               // string veh_num = obj.Display_vehno(); 
                //lbveh_number1.Text = veh_num.ToString();
            }
            else
            {
                HyperLink1.Visible = false;
            }
        
            tbuserid.Text = "";
            //d_applntype.Text = "";
            tbfee.Text = "";
            tbusername.Text = "";
        }

        protected void receipt_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/erto_userforms/feereceipt.aspx");
        }
    }
}