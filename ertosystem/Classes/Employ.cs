using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class Employ
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
        private string veh_id;
        private string user_Id;
        private string fetchid;
        private string ename;
        private string edob;
        private string eaddress;
        private string emob;

        public string Veh_id { get => veh_id; set => veh_id = value; }
        public string User_Id { get => user_Id; set => user_Id = value; }
        public string Ename { get => ename; set => ename = value; }
        public string Edob { get => edob; set => edob = value; }
        public string Eaddress { get => eaddress; set => eaddress = value; }
        public string Emob { get => emob; set => emob = value; }
        public string Fetchid { get => fetchid; set => fetchid = value; }


        //public int User_id { get => user_id; set => user_id = value; }
        public DataTable FetchDetails()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select Name,DOB,Address,Mobile_number from empregistration_table where Username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", fetchid);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }

        public DataTable VehicleDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            string qry = "select User_Id,Veh_type,Veh_company,Veh_model,Registration_date,Vehicle_no from vehicleregistration_table where  Veh_Id='" + veh_id + "' ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@dveh_id", veh_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
        public DataTable UserDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            string qry = "select name,dob,gender,address,mob_number,email from userregistration_table where  user_id='" + User_Id + "' ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@duser_id", User_Id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;
        }
    }
}