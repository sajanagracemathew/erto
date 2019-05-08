﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_empforms
{
    public partial class transferview : System.Web.UI.Page
    {
        TransferOwnership obj = new TransferOwnership();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTransfer();
            }
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[0].Text;
            obj.Update_button = firstCellText;
            //obj.DisplayRequestDetails();
            obj.UpdateTable();
            BindTransfer();

        }
        private void BindTransfer()
        {

            DataTable dtReg = new DataTable();
            dtReg = obj.DisplayRequestDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.FindControl("hdnApp") as HiddenField).Value == "0")
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = true;
                }
                else
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = false;
                }
            }
        }
    }
}