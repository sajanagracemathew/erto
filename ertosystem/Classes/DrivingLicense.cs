using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class DrivingLicense
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
        private string dl_id;
        private string uid;
        private string learner_no;
        private string name;
        private string swd;
        private string dob;
        private string address;
        private string d_bgrp;
        private string qualification;
        private string veh_type;
        private string date;

      
        public string Uid { get => uid; set => uid = value; }
        public string Learner_no { get => learner_no; set => learner_no = value; }
        public string Name { get => name; set => name = value; }
        public string Swd { get => swd; set => swd = value; }
        public string Dob { get => dob; set => dob = value; }
        public string Address { get => address; set => address = value; }
        public string D_bgrp { get => d_bgrp; set => d_bgrp = value; }
        public string Qualification { get => qualification; set => qualification = value; }
        public string Veh_type { get => veh_type; set => veh_type = value; }
        public string Date { get => date; set => date = value; }
        public string Dl_id { get => dl_id; set => dl_id = value; }
        

        public void InsertDrivinglicense_Parameter()
        {
            OpenConection();
            date = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(date);
            string qry = "insert into Drivinglicense_table (User_id,Learnerappln_no,SWD,Blood_grp,Qual,Veh_type,Date) values(@usrid,@appln_no,@swd1,@bloodgp,@qual,@vehtype,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@usrid", uid);
            cmd.Parameters.AddWithValue("@appln_no", learner_no);
            cmd.Parameters.AddWithValue("@swd1", swd);
            cmd.Parameters.AddWithValue("@bloodgp", d_bgrp);
            cmd.Parameters.AddWithValue("@qual", qualification);
            cmd.Parameters.AddWithValue("@vehtype", veh_type);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.ExecuteNonQuery();
        }

        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select user_id,name,dob,address from userregistration_table where username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", dl_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
    }
}