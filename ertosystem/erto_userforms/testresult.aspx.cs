using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using ertosystem.Classes;
using System.Data;

namespace ertosystem.erto_userforms
{
    public partial class testresult : System.Web.UI.Page
    {
        LearnersLicense obj = new LearnersLicense();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Ll_id = Session["user"].ToString();
            obj.Uid = tbuserid.Text;
            obj.ExecuteSelect();

            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                tbuserid.Text = dt1.Rows[0]["user_id"].ToString();

            }
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
                    tbstatus1.Text = "pass";
                    lbappln_no.Visible = true;
                    tbappln_no.Visible = true;
                    lbnote.Visible = true;
                    llapply_btn.Visible = true;
                    if (tbstatus1.Text == "pass")
                    {
                        obj.GenerateAutoNo();
                    }
                    tbappln_no.Text = obj.Appln_no;
                }
                else
                {
                    tbstatus.Text = "YOU HAVE FAILED";
                    tbstatus.ForeColor = Color.Red;
                    llapply_btn.Visible = true;
                    tbstatus1.Text = "fail";
                }

            }
            

        }

        protected void llapply_btn_Click(object sender, EventArgs e)
        {
            obj.Score = tbscore.Text;
            obj.Status = tbstatus1.Text;
            obj.Appln_no = tbappln_no.Text;
            obj.UpdateLearner();
            if(tbstatus1.Text=="pass")
            {
                Response.Write("<script>alert('Application Submitted Successfully..Please Pay the Fees(online/manually)')</script>");
            }
            else
            {
                Response.Write("<script>alert('Sorry..You have failed the test')</script>");
            }
            
        }
    }
}