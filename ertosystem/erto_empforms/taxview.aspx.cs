﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ertosystem.erto_empforms
{
    public partial class taxview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewtax_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("tax_details.aspx");
        }
    }
}