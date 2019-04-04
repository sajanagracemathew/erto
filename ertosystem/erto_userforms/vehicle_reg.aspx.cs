using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;
using System.IO;


namespace ertosystem.erto_userforms
{
    public partial class vehicle_reg1 : System.Web.UI.Page
    {
        VehicleRegistration obj = new VehicleRegistration();
        public string usrname = "";
        protected void Page_Load(object sender, EventArgs e)
        {

           
            tbregdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
            if (!IsPostBack)
            {
                BindDistrict();
                obj.GenerateAutoID();
                veh_id1.Text = obj.Oveh_id;
            }
            obj.Oid = Session["user"].ToString();
            obj.User_id1 = tbuserid.Text;
            obj.UnameT = lbveh_owner1.Text;
            obj.Odob = lbownerdob1.Text;
            obj.Oaddress = lbowneraddress1.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text= dt1.Rows[0]["user_id"].ToString();
                lbveh_owner1.Text = dt1.Rows[0]["name"].ToString();
                lbownerdob1.Text = dt1.Rows[0]["dob"].ToString();
                lbowneraddress1.Text = dt1.Rows[0]["address"].ToString();

            }

        }
        

        protected void register_btn_Click(object sender, EventArgs e)
        {
            obj.Oveh_id = veh_id1.Text;
            obj.User_id1 = tbuserid.Text;
            obj.D_district = ddistrict.Text;
            obj.UnameT = lbveh_owner1.Text;
            obj.Oswd = tbregswd.Text;
            obj.Odob = lbownerdob1.Text;
            obj.Oaddress = lbowneraddress1.Text;
            //obj.Oproof = FileUpload3.FileName;
            obj.Oveh_type = dpvehtype.Text;
            obj.Oveh_company = tbvehcompany.Text;
            obj.Oveh_model = tbvehmodel.Text;
            obj.Oveh_manuf = tbvehmanuf.Text; ;
            obj.Oareaname = tbareaname.Text;
            obj.Ochassisnum = Convert.ToInt32(tbchassis.Text);
            //obj.Ofitnesscer = FileUpload2.FileName;
            obj.Oregdate = tbregdate.Text;

            String filename = Path.GetFileName(FileUpload3.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".pdf")
            {
                string src = Server.MapPath("~/Uploads/Add_proof") + "\\" + veh_id1.Text + ".pdf";
                FileUpload3.PostedFile.SaveAs(src);
                string picpath = "~/Uploads/Add_proof/" + veh_id1.Text + ".pdf";
                obj.Oproof = picpath;
            }
            String filename1 = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string ext1 = Path.GetExtension(filename1);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".pdf")
            {
                string src = Server.MapPath("~/Uploads/Fitness_cer") + "\\" + veh_id1.Text + ".pdf";
                FileUpload2.PostedFile.SaveAs(src);
                string picpath = "~/Uploads/Fitness_cer/" + veh_id1.Text + ".pdf";
                obj.Ofitnesscer = picpath;
            }
            obj.InsertVehiclereg_Parameter();
           
            Response.Write("<script>alert('Submitted Successfully...Please Pay the Registration Fees(online/manually)')</script>");

            tbuserid.Text = "";
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

        protected void ddistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj.D_district = ddistrict.SelectedValue.ToString();
           
        }

        private void BindDistrict()
        {

            DataTable dispdistrict = new DataTable();

            dispdistrict = obj.FetchDistrict();
            if (dispdistrict.Rows.Count > 0)
            {

                ddistrict.DataSource = dispdistrict;               
                ddistrict.DataBind();
            }
        }
    }

    

}