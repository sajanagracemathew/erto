﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_officerforms
{
    public partial class usrdetails : System.Web.UI.Page
    {
        Employ obj = new Employ();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void serach_btn_Click(object sender, EventArgs e)
        {
            obj.User_Id = dduserdetails.Text;
            System.Data.DataTable dtReg1 = new DataTable();
            dtReg1 = obj.UserDetails();
            if (dtReg1.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg1;
                GridView1.DataBind();
            }
        }
    }
}