using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ertosystem.Classes
{
    public class User
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
        private string name;
        private string dob;
        private string address;
        private string city;
        private string mobile;
        private string email;
        public string photo;
        private string username;
        private string password;
        private string con_password;

        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        public string City { get => city; set => city = value; }
        public string Mobile { get => mobile; set => mobile = value; }
        public string Email { get => email; set => email = value; }
        public string Photo { get => photo; set => photo = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Con_password { get => con_password; set => con_password = value; }
        public string Dob { get => dob; set => dob = value; }

        public void InsertUser()
        {
            OpenConection();
            string qry = "insert into userregistration_table values ('" + name + "','" + Dob + "','" + address + "','" + city + "','" + mobile + "','" + email + "','" + photo + "','" + username + "','" + password + "','" + con_password + "');";
            ExecuteQueries(qry);
        }
    }
}