using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;
using System.Data;
using System.IO;

namespace ertosystem.erto_userforms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            User uobj = new User();
            uobj.Username = tbusername.Text;
            string utyp = "";

            utyp = uobj.GetUsername();
            if(utyp != null)
            {
                Response.Write("<script>alert('username already exists')</script>");
            }
            else
            {
                if (rbmale.Checked)
                {
                    uobj.Gender = rbmale.Text.ToString();
                }
                else if (rbfemale.Checked)
                {
                    uobj.Gender = rbfemale.Text.ToString();
                }
                uobj.Name = tbname.Text;
                uobj.Dob = tbdob.Text;
                uobj.Address = tbaddress.Text;
                uobj.City = tbcity.Text;
                uobj.Mobile = tbmobile.Text;
                uobj.Email = tbemail.Text;
                //uobj.Photo = FileUpload1.FileName;
                uobj.Username = tbusername.Text;
                uobj.Password = tbpassword.Text;
                

                String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string ext = Path.GetExtension(filename);
                if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
                {
                    string src = Server.MapPath("~/Images") + "\\" + tbusername.Text + ".jpg";
                    FileUpload1.PostedFile.SaveAs(src);
                    string picpath = "~/Images/" + tbusername.Text + ".jpg";
                    uobj.Photo = picpath;
                }
                uobj.InsertUser();
                uobj.InsertLogin2();

                Response.Write("<script>alert('Registered Successfully')</script>");

                tbname.Text = "";
                tbdob.Text = "";
                tbaddress.Text = "";
                tbcity.Text = "";
                tbmobile.Text = "";
                tbemail.Text = "";
                tbusername.Text = "";
                tbpassword.Text = "";
            }

        }

           

    }
}