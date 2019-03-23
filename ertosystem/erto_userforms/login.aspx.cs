﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_userforms
{
    public partial class login : System.Web.UI.Page
    {
        Logins obj = new Logins();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            DataTable dtReg = new DataTable();
            obj.Username = tbloginusername.Text;
            obj.Password = tbloginpassword.Text;
            dtReg = obj.ExecuteSelectQueries();
            if(dtReg.Rows.Count>0)
            {
                String type1 = "";
                type1 += dtReg.Rows[0]["Login_type"];
                if(type1=="admin")
                {
                    Label1.Text = "Login Success...!";
                    //Response.Redirect("~/erto_adminforms/adminhome.aspx");
                }
                if (type1 == "officer")
                {
                    Label1.Text = "Login Success...!";
                    //Response.Redirect("~/erto_officerforms/rtohome.aspx");
                }
                if (type1 == "employee")
                {
                    Label1.Text = "Login Success...!";
                    //Response.Redirect("~/erto_empforms/employhome.aspx");
                }
                if (type1 == "user")
                {
                    Label1.Text = "Login Success...!";
                    //Response.Redirect("~/erto_userforms/userhome.aspx");
                }

            }
            else
            {
                Label1.Text = "Wrong username or password. Try again...!!";
            }
        }
    }
}