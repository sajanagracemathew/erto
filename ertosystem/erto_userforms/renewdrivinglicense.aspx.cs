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
    public partial class drivinglicenseappln : System.Web.UI.Page
    {
        RenewDl obj = new RenewDl();
        protected void Page_Load(object sender, EventArgs e)
        {
            tbcurrentdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
            obj.Lid = Session["user"].ToString();
            obj.Name = tblname.Text;
            obj.Dob = tbldob.Text;
            obj.Address = tbladdress.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text = dt1.Rows[0]["user_id"].ToString();
                tblname.Text = dt1.Rows[0]["name"].ToString();
                tbldob.Text = dt1.Rows[0]["dob"].ToString();
                tbladdress.Text = dt1.Rows[0]["address"].ToString();

            }

        }

        protected void renew_btn_Click(object sender, EventArgs e)
        {
            obj.Uid = tbuserid.Text;
            obj.Licensenumber = tblicense_no.Text;
            //obj.Name = tblname.Text;
            //obj.Dob = tbldob.Text;
           // obj.Address = tbladdress.Text;
            obj.Currentdate = tbcurrentdate.Text;
            obj.Expiredate = tbexpiredate.Text;
            obj.InsertRenewlicense_Parameter();

            Response.Write("<script>alert('Application Submitted Successfully...Please Pay the Fees(online/manually)')</script>");

            tbuserid.Text = "";
            tblicense_no.Text = "";
            tblname.Text = "";
            tbldob.Text = "";
            tbladdress.Text = "";
            tbcurrentdate.Text = "";
            tbexpiredate.Text = "";
        }
    }
}