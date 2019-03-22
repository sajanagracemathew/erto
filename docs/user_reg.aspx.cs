using System;
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
            uobj.Name = tbname.Text;
            uobj.Dob = tbdob.Text;
            uobj.Address = tbaddress.Text;
            uobj.City = tbcity.Text;
            uobj.Mobile = tbmobile.Text;
            uobj.Email = tbemail.Text;
            //uobj.Photo = upphoto.Text;
            uobj.Username = tbusername.Text;
            uobj.Password = tbpassword.Text;
            uobj.Con_password = tbconfirm.Text;
            uobj.InsertUser();

        }
    }
}