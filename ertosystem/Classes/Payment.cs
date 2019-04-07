using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class Payment
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
        private string appln_type;
        private string fee;

        public string Appln_type { get => appln_type; set => appln_type = value; }
        public string Fee { get => fee; set => fee = value; }

        public DataTable FetchFee()
        {
            OpenConection();

            DataTable dispfee = new DataTable();
            SqlCommand command = new SqlCommand("select Appln_Type,Appln_id from fee_table ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispfee);
            CloseConnection();
            return dispfee;
        }
        public int DisplayFee()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("Select Fee from Fee_table where Appln_id='"+fee+"' ", con);
            int fees;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
            {
                fees = (int)cMax;
                return fees;
            }
            else
            {
                return 0;
            }
        }
    }
}