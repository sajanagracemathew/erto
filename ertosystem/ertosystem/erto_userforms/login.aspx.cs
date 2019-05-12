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
                if (type1 == "admin")
                {
                    //Label1.Text = "Login Success...!";
                    Session["admin"] = tbloginusername.Text;
                    Response.Redirect("~/erto_adminforms/adminhome.aspx");
                }
                if (type1 == "officer")
                {
                    Session["officer"] = tbloginusername.Text;
                    Label1.Text = "Login Success...!";
                    Response.Redirect("~/erto_officerforms/officerhome.aspx");
                }
                if (type1 == "employee")
                {
                    Session["employee"] = tbloginusername.Text;
                    //Label1.Text = "Login Success...!";
                    Response.Redirect("~/erto_empforms/emphome.aspx");
                }
                if (type1 == "user")
                {
                    Session["user"] = tbloginusername.Text;
                    Label1.Text = "Login Success...!";
                    //Response.Redirect("~/erto_userforms/vehicle_reg.aspx?Value=" + tbloginusername.Text);
                    //Response.Redirect("~/erto_userforms/renewdrivinglicense.aspx");
                    Response.Redirect("~/erto_userforms/userhome.aspx");
                }

            }
            else
            {
                Label1.Text = "Wrong username or password. Try again...!!";
            }
        }
    }
}