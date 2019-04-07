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
            
           if(!IsPostBack)
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
            }
        }

        protected void ok_btn_Click(object sender, EventArgs e)
        {
            obj.Appln_type = d_applntype.Text;
            obj.Fee = tbfee.Text;
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
    }
}