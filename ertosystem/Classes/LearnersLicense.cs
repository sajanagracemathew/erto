using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class LearnersLicense
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
        private string ll_id;
        private string uid;
        private string appln_no;
        private string name;
        private string dob;
        private string address;
        private string proof;
        private string date;
        private string update_btn;

        public string Ll_id { get => ll_id; set => ll_id = value; }
        public string Uid { get => uid; set => uid = value; }
        public string Name { get => name; set => name = value; }
        public string Dob { get => dob; set => dob = value; }
        public string Address { get => address; set => address = value; }
        public string Proof { get => proof; set => proof = value; }
        public string Date { get => date; set => date = value; }
        public string Appln_no { get => appln_no; set => appln_no = value; }
        public string Update_btn { get => update_btn; set => update_btn = value; }

        public void InsertLl_Parameter()
        {
            OpenConection();
            date = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(date);
            string qry = "insert into learnerlicense_table (User_id,Appln_no,Proof,Date) values(@usrid,@appln_no,@proof,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@usrid", uid);
            cmd.Parameters.AddWithValue("@appln_no", appln_no);
            cmd.Parameters.AddWithValue("@proof", proof);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.ExecuteNonQuery();
        }

        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select user_id,name,dob,address from userregistration_table where username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", ll_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public void GenerateAutoNo()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(User_id) from learnerlicense_table ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                appln_no = "LL" + count;
            }
            else
            {
                count = 1;
                appln_no = "LL" + count;
            }

        }
        public DataTable DisplayRequestDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            string qry = "Select User_id,Appln_no,Proof,Date,is_verified, CASE WHEN is_verified=0 THEN 'NOT VERIFIED' ELSE 'VERIFIED' END AS APR_STATUS from learnerlicense_table ";

            SqlCommand cmd2 = new SqlCommand(qry, con);

            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;
        }
        public void UpdateTable()
        {
            OpenConection();

            SqlCommand cmd3 = new SqlCommand("update learnerlicense_table set is_verified='1' where User_id=@usr_id", con);

            cmd3.Parameters.AddWithValue("@usr_id", update_btn);

            cmd3.ExecuteNonQuery();
        }
        public DataTable DisplayofficerRequestDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            string qry = "Select User_id,Appln_no,Proof,Date,is_verified,is_approved, CASE WHEN is_approved=0 THEN 'NOT APPROVED' ELSE 'APPROVED' END AS APR_STATUS from learnerlicense_table WHERE is_verified='1'";

            SqlCommand cmd2 = new SqlCommand(qry, con);

            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;
        }
        public void UpdateTable1()
        {
            OpenConection();

            SqlCommand cmd3 = new SqlCommand("update learnerlicense_table set is_approved='1' where User_id=@usr_id", con);

            cmd3.Parameters.AddWithValue("@usr_id", update_btn);

            cmd3.ExecuteNonQuery();
        }
    }
}