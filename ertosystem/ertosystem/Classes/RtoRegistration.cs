using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ertosystem.Classes
{
    public class RtoRegistration
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
        private string rname;
        private string rdob;
        private string rgender;
        private string raddress;
        private string rmobile;
        private string remail;
        private string rdoj;
        private string rphoto;
        private string rusername;
        private string rpassword;
        private string type;

        public string Rname { get => rname; set => rname = value; }
        public string Rdob { get => rdob; set => rdob = value; }
        public string Raddress { get => raddress; set => raddress = value; }
        public string Rmobile { get => rmobile; set => rmobile = value; }
        public string Rdoj { get => rdoj; set => rdoj = value; }
        public string Rphoto { get => rphoto; set => rphoto = value; }
        public string Rusername { get => rusername; set => rusername = value; }
        public string Rpassword { get => rpassword; set => rpassword = value; }
        public string Remail { get => remail; set => remail = value; }
        public string Type { get => type; set => type = value; }
        public string Rgender { get => rgender; set => rgender = value; }

        public void InsertRto_Parameter()
        {
            OpenConection();
            
            string qry = "insert into rtoregistration_table values(@name,@dob,@gender,@address,@mobile_number,@email,@doj,@photo,@username,@password);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", rname);
            cmd.Parameters.AddWithValue("@dob", rdob);
            cmd.Parameters.AddWithValue("@gender", rgender);
            cmd.Parameters.AddWithValue("@address", raddress);
            cmd.Parameters.AddWithValue("@mobile_number", rmobile);
            cmd.Parameters.AddWithValue("@email", remail);
            cmd.Parameters.AddWithValue("@doj", rdoj);
            cmd.Parameters.AddWithValue("@photo", rphoto);
            cmd.Parameters.AddWithValue("@username", rusername);
            cmd.Parameters.AddWithValue("@password", rpassword);
            cmd.ExecuteNonQuery();
        }
        public void InsertLogin()
        {
            OpenConection();
            type = "Officer";
            string qry1 = "insert into Login_table values(@type,@username,@password);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@type", type);
            cmd1.Parameters.AddWithValue("@username", rusername);
            cmd1.Parameters.AddWithValue("@password", rpassword);
            cmd1.ExecuteNonQuery();
        }
        public void GenerateAutoID()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(Name) from rtoregistration_table ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
              count = (int)cnt;
              count++;
             rusername = "RT" + count;
            }
            else
            {
               count = 1;
                rusername = "RT" + count;
            }

        }


    }
}