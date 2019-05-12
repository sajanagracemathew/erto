using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using ertosystem.Classes;

namespace ertosystem.erto_userforms
{
    public partial class testresult : System.Web.UI.Page
    {
        LearnersLicense obj = new LearnersLicense();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbscore.Text = Session["score"].ToString();
                //obj.Score = tbscore.Text;
                /* if (Request.QueryString["Parameter"] != null)
                 {
                     tbscore.Text = Request.QueryString["Parameter"].ToString();
                 }*/
                if (tbscore.Text == "12" || tbscore.Text == "13" || tbscore.Text == "14" || tbscore.Text == "15" || tbscore.Text == "16" || tbscore.Text == "17" || tbscore.Text == "18" || tbscore.Text == "19" || tbscore.Text == "20")
                {
                    tbstatus.Text = "YOU HAVE PASSED";
                    tbstatus.ForeColor = Color.Green;
                    lbappln_no.Visible = true;
                    tbappln_no.Visible = true;
                    llapply_btn.Visible = true;
                    obj.GenerateAutoNo();
                    tbappln_no.Text = obj.Appln_no;
                }
                else
                {
                    tbstatus.Text = "YOU HAVE FAILED";
                    tbstatus.ForeColor = Color.Red;
                }
            }
        }
    }
}