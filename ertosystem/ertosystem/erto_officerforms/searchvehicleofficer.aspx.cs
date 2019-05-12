using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_officerforms
{
    public partial class searchvehicleofficer : System.Web.UI.Page
    {
        Employ obj = new Employ();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void search_btn_Click(object sender, EventArgs e)
        {
            obj.Veh_id = ddvehid.Text;
            System.Data.DataTable dtReg = new DataTable();
            dtReg = obj.VehicleDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}