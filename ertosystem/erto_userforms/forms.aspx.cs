﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ertosystem.erto_userforms
{
    public partial class forms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dwnld_btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Images_erto/fitness.pdf");
        }

        protected void ins_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Images_erto/insurance.pdf");
        }

        protected void noc_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Images_erto/noc.pdf");
        }
    }
}