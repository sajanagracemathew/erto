using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_userforms
{
    public partial class learnerslicense : System.Web.UI.Page
    {
        LearnersLicense obj = new LearnersLicense();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //obj.GenerateAutoNo();
                //tbappln_no.Text = obj.Appln_no;
                //empid.Text = eobj.Eusername;
            }
            tbdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
            obj.Ll_id = Session["user"].ToString();
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void rtotest_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/testInstructions.aspx");
        }

        protected void apply_btn_Click(object sender, EventArgs e)
        {
         
            obj.Uid = tbuserid.Text;
            obj.Testid = tbtestid.Text;
            obj.Date = tbdate.Text;
            String filename = Path.GetFileName(proofupload.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".pdf")
            {
                string src = Server.MapPath("~/Uploads/Age_proof") + "\\" + tbtestid.Text + ".pdf";
                proofupload.PostedFile.SaveAs(src);
                string picpath = "~/Uploads/Age_proof/" + tbtestid.Text + ".pdf";
                obj.Proof = picpath;
            }
            obj.InsertLl_Parameter();
            Response.Write("<script>alert('Application Submitted Successfully..Please Take the onlineTest and Pay the Fees(online/manually)')</script>");

            tbuserid.Text = "";
            tbname.Text = "";
            tbdob.Text = "";
            tbaddress.Text = "";
            tbtestid.Text = "";
            tbdate.Text = "";

        }
    }
}