using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ertosystem.Classes;

namespace ertosystem.erto_userforms
{
    public partial class vehicledetails : System.Web.UI.Page
    {
        VehicleRegistration obj = new VehicleRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void get_btn_Click(object sender, EventArgs e)
        {
            obj.Veh_no = tbvehno.Text;
            obj.Ochassisnum = Convert.ToInt32(tbchassisno.Text);
            System.Data.DataTable dtReg = new DataTable();
            dtReg = obj.VehicleDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }
            //tbvehno.Text = "";
            //tbchassisno.Text = "";
        }
    }
}