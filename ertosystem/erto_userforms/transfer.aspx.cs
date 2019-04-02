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
    public partial class transfer : System.Web.UI.Page
    {
        TransferOwnership obj = new TransferOwnership();
        protected void Page_Load(object sender, EventArgs e)
        {
            tbdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
            obj.Trans_id = Session["user"].ToString();
            obj.Ownername = tbcurrentname.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbcurrentname.Text = dt1.Rows[0]["name"].ToString();

            }

        }

        protected void transfer_btn_Click(object sender, EventArgs e)
        {
            obj.Ownername = tbcurrentname.Text;
            obj.Veh_id = tbvehid.Text;
            obj.Veh_number = tbvehno.Text;
            obj.Newownername = tbnewname.Text;
            obj.Dob = tbnewdob.Text;
            obj.Swd = tbnewswd.Text;
            obj.Address = tbnewaddress.Text;
            obj.Date = tbdate.Text;

            String filename = Path.GetFileName(uploadins_cer.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".pdf")
            {
                string src = Server.MapPath("~/Fileuploads/Insurance_certificates") + "\\" + tbvehid.Text + ".pdf";
                uploadins_cer.PostedFile.SaveAs(src);
                string picpath = "~/Fileuploads/Insurance_certificates/" + tbvehid.Text + ".pdf";
                obj.Ins_cer = picpath;
            }
            String filename1 = Path.GetFileName(uploadnoc_cer.PostedFile.FileName);
            string ext1 = Path.GetExtension(filename1);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".pdf")
            {
                string src = Server.MapPath("~/Fileuploads/Noc_certificates") + "\\" + tbvehid.Text + ".pdf";
                uploadnoc_cer.PostedFile.SaveAs(src);
                string picpath = "~/Fileuploads/Noc_certificates/" + tbvehid.Text + ".pdf";
                obj.Noc = picpath;
            }
            obj.InsertTransfer_Parameter();

            Response.Write("<script>alert('Application Submitted Successfully...Please Pay the Fees(online/manually)')</script>");

            tbcurrentname.Text = "";
            tbvehid.Text = "";
            tbvehno.Text = "";
            tbnewname.Text = "";
            tbnewdob.Text = "";
            tbnewswd.Text = "";
            tbnewaddress.Text = "";
            tbdate.Text = "";
        }

        protected void tbvehid_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}