﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ertosystem
{
    public partial class testInstructions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["timeout"] != null)
            {
                lbstatus.Text = "You test time expired, please try again!";
            }

        }
    }
}