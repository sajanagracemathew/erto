using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class TransferOwnership
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
        private string trans_id;
        //private string vid;
        private string ownername;
        private string veh_id;
        private string veh_number;
        private string newownername;
        private string dob;
        private string swd;
        private string address;
        private string ins_cer;
        private string noc;
        private string date;

        public string Ownername { get => ownername; set => ownername = value; }
        public string Veh_id { get => veh_id; set => veh_id = value; }
        public string Veh_number { get => veh_number; set => veh_number = value; }
        public string Newownername { get => newownername; set => newownername = value; }
        public string Dob { get => dob; set => dob = value; }
        public string Swd { get => swd; set => swd = value; }
        public string Address { get => address; set => address = value; }
        public string Ins_cer { get => ins_cer; set => ins_cer = value; }
        public string Noc { get => noc; set => noc = value; }
        public string Date { get => date; set => date = value; }
        public string Trans_id { get => trans_id; set => trans_id = value; }
        //public string Vid { get => vid; set => vid = value; }

        public void InsertTransfer_Parameter()
        {
            OpenConection();
            Date = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(Date);
            string qry = "insert into transfer_table values(@cownername,@cveh_id,@cveh_no,@nownername,@ndob,@nswd,@naddress,@veh_inscer,@veh_noc,@cdate);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@cownername", ownername);
            cmd.Parameters.AddWithValue("@cveh_id", veh_id);
            cmd.Parameters.AddWithValue("@cveh_no", veh_number);
            cmd.Parameters.AddWithValue("@nownername", newownername);
            cmd.Parameters.AddWithValue("@ndob", dob);
            cmd.Parameters.AddWithValue("@nswd", swd);
            cmd.Parameters.AddWithValue("@naddress", address);
            cmd.Parameters.AddWithValue("@veh_inscer", ins_cer);
            cmd.Parameters.AddWithValue("@veh_noc", noc);
            cmd.Parameters.AddWithValue("@cdate", date);
            cmd.ExecuteNonQuery();
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select name from userregistration_table where username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", trans_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable ExecuteSelectQueries()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select vehicleregistration_table.Veh_Id from vehicleregistration_table "+
                                            " LEFT OUTER JOIN transfer_table ON vehicleregistration_table.Veh_Id=transfer_table.Veh_Id", con);
            cmd2.Parameters.AddWithValue("@v_id", veh_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt2);
            CloseConnection();
            return dt2;
        }
    }
}