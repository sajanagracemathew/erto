using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ertosystem.Classes
{
    public class RenewDl
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
        private string licensenumber;
        private string name;
        private string currentdate;
        private string expiredate;

        public string Licensenumber { get => licensenumber; set => licensenumber = value; }
        public string Name { get => name; set => name = value; }
        public string Currentdate { get => currentdate; set => currentdate = value; }
        public string Expiredate { get => expiredate; set => expiredate = value; }
        public void InsertRenewlicense_Parameter()
        {
            OpenConection();
            currentdate = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(currentdate);
            string qry = "insert into renewdrivinglicense_table values(@license_no,@hname,@current_date,@expire_date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@license_no", licensenumber);
            cmd.Parameters.AddWithValue("@hname", name);
            cmd.Parameters.AddWithValue("@current_date", currentdate);
            cmd.Parameters.AddWithValue("@expire_date", expiredate);

        }
    }
}