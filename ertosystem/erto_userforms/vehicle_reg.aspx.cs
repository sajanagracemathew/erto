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
    public partial class vehicle_reg1 : System.Web.UI.Page
    {
        VehicleRegistration obj = new VehicleRegistration();
        public string usrname = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                obj.GenerateAutoID();
                veh_id1.Text = obj.Oveh_id;
            }
            usrname = Request.QueryString["value"];
            UserDet();
        }
        public void UserDet()
        {
            obj.UnameT = usrname;
            DataTable dispname = new DataTable();
            dispname = obj.ExecuteSelectQueries();
            if (dispname.Rows.Count > 0)
            {
                lbveh_owner1.Text = dispname.Rows[0]["name"].ToString();
                lbownerdob1.Text = dispname.Rows[0]["dob"].ToString();
                lbowneraddress1.Text = dispname.Rows[0]["address"].ToString();

            }

        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            obj.Oveh_id = veh_id1.Text;
            obj.UnameT = lbveh_owner1.Text;
            obj.Oswd = tbregswd.Text;
            obj.Odob = lbownerdob1.Text;
            obj.Oaddress = lbowneraddress1.Text;
            obj.Oproof = FileUpload3.FileName;
            obj.Oveh_type = dpvehtype.Text;
            obj.Oveh_company = tbvehcompany.Text;
            obj.Oveh_model = tbvehmodel.Text;
            obj.Oveh_manuf = tbvehmanuf.Text; ;
            obj.Oareaname = tbareaname.Text;
            obj.Ochassisnum = Convert.ToInt32(tbchassis.Text);
            obj.Ofitnesscer = FileUpload2.FileName;
            obj.Oregdate = tbregdate.Text;
            obj.InsertVehiclereg_Parameter();
           

            if (FileUpload3.HasFile)
            {
                FileUpload3.SaveAs(Server.MapPath("~/Images/" + FileUpload3.FileName));
                obj.Oproof = FileUpload3.FileName + "";
            }
            else if (FileUpload2.HasFile)
            {
                FileUpload3.SaveAs(Server.MapPath("~/Images/" + FileUpload3.FileName));
                obj.Ofitnesscer = FileUpload2.FileName + "";
            }
            Response.Write("Please pay the registration fees(online/manually)");

            lbveh_id.Text = "";
            lbveh_owner1.Text = "";
            tbregswd.Text = "";
            lbownerdob1.Text = "";
            lbowneraddress1.Text = "";
            tbvehcompany.Text = "";
            tbvehmodel.Text = "";
            tbvehmanuf.Text = "";
            tbchassis.Text = "";
            tbregdate.Text = "";
            
        }
    }

    

}