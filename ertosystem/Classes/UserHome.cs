using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class UserHome
    {
        string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
        SqlConnection con;
        public void OpenConection()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
        }
        public void CloseConnection()
        {
            con.Close();
        }

        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }
        private string hid;
        private string userid;
        private string hname;
        private string hdob;
        private string haddress;
        private string hmobile_no;
        private string hphoto;
        
        public string Hname { get => hname; set => hname = value; }
        public string Hdob { get => hdob; set => hdob = value; }
        public string Haddress { get => haddress; set => haddress = value; }
        public string Hmobile_no { get => hmobile_no; set => hmobile_no = value; }
        public string Hid { get => hid; set => hid = value; }
        public string Userid { get => userid; set => userid = value; }
        public string Hphoto { get => hphoto; set => hphoto = value; }

        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select user_id,name,dob,address,mob_number,photo from userregistration_table where username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", hid);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
    }
}