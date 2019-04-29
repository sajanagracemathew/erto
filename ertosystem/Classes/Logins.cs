using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace ertosystem.Classes
{
    public class Logins
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

        private string username;
        private string password;
        private string Email;
        private string msg;

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Email1 { get => Email; set => Email = value; }
        public string Msg { get => msg; set => msg = value; }

        public DataTable ExecuteSelectQueries()
        {
            OpenConection();
            string qry = "select Login_type from Login_table where Username='" + Username + "' and Password='" + Password + "'";
            ExecuteQueries(qry);
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@uname", Username);
            cmd.Parameters.AddWithValue("@password", Password);
            DataTable dtReg = new DataTable();

            String type1 = "";

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReg);

            CloseConnection();
            return dtReg;
        }

        public void FetchEmail()
        {
            OpenConection();
            string qry = "select email,password from userregistration_table where email='"+ Email+"'";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@email", Email);
            CloseConnection();
        }
        
    }
}