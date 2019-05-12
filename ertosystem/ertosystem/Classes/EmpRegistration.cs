using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class EmpRegistration
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
        private string ename;
        private string edob;
        private string egender;
        private string eaddress;
        private string emobile;
        private string eemail;
        private string equal;
        private string edoj;
        private string ephoto;
        private string eusername;
        private string epassword;
        private string etype;
        private string newpwd;

        public string Ename { get => ename; set => ename = value; }
        public string Edob { get => edob; set => edob = value; }
        public string Eaddress { get => eaddress; set => eaddress = value; }
        public string Emobile { get => emobile; set => emobile = value; }
        public string Eemail { get => eemail; set => eemail = value; }
        public string Equal { get => equal; set => equal = value; }
        public string Edoj { get => edoj; set => edoj = value; }
        public string Ephoto { get => ephoto; set => ephoto = value; }
        public string Eusername { get => eusername; set => eusername = value; }
        public string Epassword { get => epassword; set => epassword = value; }
        public string Etype { get => etype; set => etype = value; }
        public string Egender { get => egender; set => egender = value; }
        public string Newpwd { get => newpwd; set => newpwd = value; }

        public void InsertEmp_Parameter()
        {
            OpenConection();

            string qry = "insert into empregistration_table values(@name,@dob,@gender,@address,@mobile_number,@email,@qual,@doj,@photo,@username,@password);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", ename);
            cmd.Parameters.AddWithValue("@dob", edob);
            cmd.Parameters.AddWithValue("@gender", egender);
            cmd.Parameters.AddWithValue("@address", eaddress);
            cmd.Parameters.AddWithValue("@mobile_number", emobile);
            cmd.Parameters.AddWithValue("@email", eemail);
            cmd.Parameters.AddWithValue("@qual", equal);
            cmd.Parameters.AddWithValue("@doj", edoj);
            cmd.Parameters.AddWithValue("@photo", ephoto);
            cmd.Parameters.AddWithValue("@username", eusername);
            cmd.Parameters.AddWithValue("@password", epassword);
            cmd.ExecuteNonQuery();
        }
        public void InsertLogin1()
        {
            OpenConection();
            etype = "employee";
            string qry1 = "insert into Login_table values(@type,@username,@password,@email);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@type", etype);
            cmd1.Parameters.AddWithValue("@username", eusername);
            cmd1.Parameters.AddWithValue("@password", epassword);
            cmd1.Parameters.AddWithValue("@email", eemail);
            cmd1.ExecuteNonQuery();
        }
        public void GenerateAutoID()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(Name) from empregistration_table ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                eusername = "EMP" + count;
            }
            else
            {
                count = 1;
                eusername = "EMP" + count;
            }

        }
        public DataTable SendEmail()
        {
            OpenConection();
            DataTable fetchdet = new DataTable();

            SqlCommand command = new SqlCommand("select Email,Username,Password from empregistration_table where Username=(select MAX(Username) from empregistration_table)", con);
            SqlDataAdapter da = new SqlDataAdapter(command);

            da.Fill(fetchdet);
            CloseConnection();
            return fetchdet;
        }
        public void UpdateEmployregPassword()
        {
            OpenConection();
            string qry3 = "update empregistration_table set Password=@updatepwd where Username=@username;";
            SqlCommand cmd = new SqlCommand(qry3, con);
            cmd.Parameters.AddWithValue("@updatepwd", newpwd);
            cmd.Parameters.AddWithValue("@username", eusername);
            cmd.ExecuteNonQuery();
        }
        public void UpdateEmployloginPassword()
        {
            OpenConection();
            string qry3 = "update Login_table set Password=@updatepwd where Login_type='employee' and Username=@username;";
            SqlCommand cmd = new SqlCommand(qry3, con);
            cmd.Parameters.AddWithValue("@updatepwd", newpwd);
            cmd.Parameters.AddWithValue("@username", eusername);
            cmd.ExecuteNonQuery();
        }
        public DataTable EmployDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            string qry = "select Name,DOB,Gender,Address,Mobile_number,Email,Educational_qual,DOJ,Photo,Username from empregistration_table where  Username='" + eusername + "' ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@dusername", eusername);
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;
        }
    }
}