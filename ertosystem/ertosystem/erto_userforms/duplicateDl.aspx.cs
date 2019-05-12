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
    public partial class duplicateDl : System.Web.UI.Page
    {
        DuplicateDlicense obj = new DuplicateDlicense();
        protected void Page_Load(object sender, EventArgs e)
        {
            textboxdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
            obj.Dupid = Session["user"].ToString();
            obj.Uid = tbuserid.Text;
            obj.Name = textboxname.Text;
            obj.Dob = textboxdob.Text;
            obj.Address = textboxaddress.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text = dt1.Rows[0]["user_id"].ToString();
                textboxname.Text = dt1.Rows[0]["name"].ToString();
                textboxdob.Text = dt1.Rows[0]["dob"].ToString();
                textboxaddress.Text = dt1.Rows[0]["address"].ToString();

            }
        }

        protected void dlduplicate_btn_Click(object sender, EventArgs e)
        {
            obj.Uid = tbuserid.Text;
            obj.Licensenumber = textboxlicenseno.Text;
            //obj.Name = textboxname.Text;
            //obj.Dob = textboxdob.Text;
            //obj.Address = textboxaddress.Text;
            obj.Date = textboxdate.Text;
            obj.InsertDuplicatelicense_Parameter();

            Response.Write("<script>alert('Application Submitted Successfully...Please Pay the Fees(online/manually)')</script>");

            tbuserid.Text = "";
            textboxlicenseno.Text = "";
            textboxname.Text = "";
            textboxdob.Text = "";
            textboxaddress.Text = "";
            textboxdate.Text = "";
        }
    }
}