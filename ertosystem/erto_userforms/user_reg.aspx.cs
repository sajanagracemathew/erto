﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

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
                uobj.Photo = FileUpload1.FileName;
                uobj.Username = tbusername.Text;
                uobj.Password = tbpassword.Text;
                uobj.Con_password = tbconfirm.Text;
                uobj.InsertUser();
                uobj.InsertLogin2();

                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
                    uobj.Photo = FileUpload1.FileName + "";
                }
                Response.Write("Registered successfully");


            }

        }

           

    }
}