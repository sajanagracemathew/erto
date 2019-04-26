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

        public string Veh_id { get => veh_id; set => veh_id = value; }
        public DataTable DisplayDetails()
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
    }
}