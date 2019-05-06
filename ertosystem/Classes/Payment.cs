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
        private string p_id;
        private string uid;
        private string appln_type;
        private string fee;
        private string pay_option;
        private string paydate;
        //private string vehicle_number;
        private string veh_no;
        private string veh_type;
        private string purchase_value;
        private string tax;
        private string fine;
        
        //private string veh_num;

        public string Appln_type { get => appln_type; set => appln_type = value; }
        public string Fee { get => fee; set => fee = value; }
        public string Uid { get => uid; set => uid = value; }
        public string Paydate { get => paydate; set => paydate = value; }
        public string Pay_option { get => pay_option; set => pay_option = value; }
        public string P_id { get => p_id; set => p_id = value; }
        public string Veh_no { get => veh_no; set => veh_no = value; }
        public string Tax { get => tax; set => tax = value; }
        public string Fine { get => fine; set => fine = value; }
        public string Veh_type { get => veh_type; set => veh_type = value; }
        public string Purchase_value { get => purchase_value; set => purchase_value = value; }

        //public string Veh_num { get => veh_num; set => veh_num = value; }
        //public string Vehicle_number { get => vehicle_number; set => vehicle_number = value; }

        public void InsertParameter()
        {
            OpenConection();
            paydate = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(paydate);
            string qry = "insert into pay_table values(@usr_id,@applntype,@fees,@option,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@usr_id", uid);
            cmd.Parameters.AddWithValue("@applntype",appln_type );
            cmd.Parameters.AddWithValue("@fees", fee);
            cmd.Parameters.AddWithValue("@option", pay_option);
            cmd.Parameters.AddWithValue("@date", paydate);
            cmd.ExecuteNonQuery();
        }
        public void Insert_taxParameter()
        {
            OpenConection();
            paydate = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(paydate);
            string qry = "insert into tax_table values(@usr_id,@veh_number,@vehtype,@purchasevalue,@tax1,@option,@date);";
            SqlCommand cmd1 = new SqlCommand(qry, con);
            cmd1.Parameters.AddWithValue("@usr_id", uid);
            cmd1.Parameters.AddWithValue("@veh_number", veh_no);
            cmd1.Parameters.AddWithValue("@vehtype", veh_type);
            cmd1.Parameters.AddWithValue("@purchasevalue", purchase_value);
            cmd1.Parameters.AddWithValue("@tax1",tax);
            cmd1.Parameters.AddWithValue("@option", pay_option);
            cmd1.Parameters.AddWithValue("@date", paydate);
            cmd1.ExecuteNonQuery();
        }
        public void Insert_fineParameter()
        {
            OpenConection();
            paydate = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(paydate);
            string qry = "insert into fine_table values(@usr_id,@veh_number,@fine1,@option,@date);";
            SqlCommand cmd1 = new SqlCommand(qry, con);
            cmd1.Parameters.AddWithValue("@usr_id", uid);
            cmd1.Parameters.AddWithValue("@veh_number", veh_no);
            cmd1.Parameters.AddWithValue("@fine1", fine);
            cmd1.Parameters.AddWithValue("@option", pay_option);
            cmd1.Parameters.AddWithValue("@date", paydate);
            cmd1.ExecuteNonQuery();
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select user_id from userregistration_table where username=@usrname", con);
            cmd2.Parameters.AddWithValue("@usrname", p_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }

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
        public DataTable FetchTax()
        {
            OpenConection();

            DataTable disptax = new DataTable();
            SqlCommand command = new SqlCommand("select Purchase_value,Value_id from taxview_table ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(disptax);
            CloseConnection();
            return disptax;
        }
        public int DisplayTax()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select Tax from taxview_table where Value_id='"+ tax +"'", con);
            int tax1;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
            {
                tax1 = (int)cMax;
                return tax1;
            }
            else
            {
                return 0;
            }
        }


    }
}