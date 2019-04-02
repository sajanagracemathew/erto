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
        private string licensenumber;
        private string name;
        private string dob;
        private string address;
        private string date;

        public string Dupid { get => dupid; set => dupid = value; }
        public string Licensenumber { get => licensenumber; set => licensenumber = value; }
        public string Name { get => name; set => name = value; }
        public string Dob { get => dob; set => dob = value; }
        public string Address { get => address; set => address = value; }
        public string Date { get => date; set => date = value; }
        public void InsertDuplicatelicense_Parameter()
        {
            OpenConection();
            date = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(date);
            string qry = "insert into duplicatedl_table values(@license_no,@dname,@ddob,@daddress,@ddate);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@license_no", licensenumber);
            cmd.Parameters.AddWithValue("@dname", name);
            cmd.Parameters.AddWithValue("@ddob", dob);
            cmd.Parameters.AddWithValue("@daddress", address);
            cmd.Parameters.AddWithValue("@ddate", date);
            cmd.ExecuteNonQuery();
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select name,dob,address from userregistration_table where username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", dupid);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
    }
}