using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class DuplicateDlicense
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
        private string dupid;
        private string uid;
        private string licensenumber;
        private string name;
        private string dob;
        private string address;
        private string date;
        private string update_button;

        public string Dupid { get => dupid; set => dupid = value; }
        public string Licensenumber { get => licensenumber; set => licensenumber = value; }
        public string Name { get => name; set => name = value; }
        public string Dob { get => dob; set => dob = value; }
        public string Address { get => address; set => address = value; }
        public string Date { get => date; set => date = value; }
        public string Uid { get => uid; set => uid = value; }
        public string Update_button { get => update_button; set => update_button = value; }

        public void InsertDuplicatelicense_Parameter()
        {
            OpenConection();
            date = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(date);
            string qry = "insert into duplicatedl_table (User_id,License_no,Date) values(@usrid,@license_no,@ddate);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@usrid", uid);
            cmd.Parameters.AddWithValue("@license_no", licensenumber);
            cmd.Parameters.AddWithValue("@ddate", date);
            cmd.ExecuteNonQuery();
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select user_id,name,dob,address from userregistration_table where username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", dupid);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable DisplayRequestDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            string qry = "Select User_id,License_no,Date,is_verified, CASE WHEN is_verified=0 THEN 'NOT VERIFIED' ELSE 'VERIFIED' END AS APR_STATUS from duplicatedl_table  ";

            SqlCommand cmd2 = new SqlCommand(qry, con);

            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;
        }
        public void UpdateTable()
        {
            OpenConection();

            SqlCommand cmd3 = new SqlCommand("update duplicatedl_table set is_verified='1' where User_id=@usr_id", con);

            cmd3.Parameters.AddWithValue("@usr_id", update_button);

            cmd3.ExecuteNonQuery();
        }
        public DataTable DisplayofficerRequestDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            string qry = "Select User_id,License_no,Date,is_verified,is_approved, CASE WHEN is_approved=0 THEN 'NOT APPROVED' ELSE 'APPROVED' END AS APR_STATUS from duplicatedl_table WHERE is_verified='1' ";

            SqlCommand cmd2 = new SqlCommand(qry, con);

            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;
        }
        public void UpdateTable1()
        {
            OpenConection();

            SqlCommand cmd3 = new SqlCommand("update duplicatedl_table set is_approved='1' where User_id=@usr_id", con);

            cmd3.Parameters.AddWithValue("@usr_id", update_button);

            cmd3.ExecuteNonQuery();
        }
    }
}
