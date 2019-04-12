using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ertosystem.Classes
{
    public class VehicleRegistration
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
        private string oid;
        private string oveh_id;
        private string user_id;
        private string d_district;
        private string unameT;
        private string oswd;
        private string odob;
        private string oaddress;
        private string oproof;
        private string  oveh_type;
        private string oveh_company;
        private string oveh_model;
        private string oveh_manuf;
        private string oareaname;
        private int ochassisnum;
        private string ofitnesscer;
        private string oregdate;
        //private string dist;
        private string veh_no;
        private string code;
        private string vehicle_no;

        public string Oveh_id { get => oveh_id; set => oveh_id = value; }
        public string Oswd { get => oswd; set => oswd = value; }
        public string Odob { get => odob; set => odob = value; }
        public string Oaddress { get => oaddress; set => oaddress = value; }
        public string Oproof { get => oproof; set => oproof = value; }
        public string Oveh_type { get => oveh_type; set => oveh_type = value; }
        public string Oveh_company { get => oveh_company; set => oveh_company = value; }
        public string Oveh_model { get => oveh_model; set => oveh_model = value; }
        public string Oveh_manuf { get => oveh_manuf; set => oveh_manuf = value; }
        public string Oareaname { get => oareaname; set => oareaname = value; }
        public int Ochassisnum { get => ochassisnum; set => ochassisnum = value; }
        public string Ofitnesscer { get => ofitnesscer; set => ofitnesscer = value; }
        public string UnameT { get => unameT; set => unameT = value; }
        public string Oregdate { get => oregdate; set => oregdate = value; }
        public string Oid { get => oid; set => oid = value; }
        //public int User_id { get => User_id1; set => User_id1 = value; }
        public string User_id1 { get => user_id; set => user_id = value; }
        public string D_district { get => d_district; set => d_district = value; }
        public string Veh_no { get => veh_no; set => veh_no = value; }
        //public string Dist { get => dist; set => dist = value; }
        public string Code { get => code; set => code = value; }
        public string Vehicle_no { get => vehicle_no; set => vehicle_no = value; }


        //public DateTime Oregdate { get => oregdate; set => oregdate = value; }

        public void InsertVehiclereg_Parameter()
        {
            OpenConection();
            oregdate = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime ddoc = Convert.ToDateTime(oregdate);
            string qry = "insert into vehicleregistration_table(Veh_Id,User_Id,SWD,Address_proof,District,Veh_type,Veh_company,Veh_model,Veh_manufactureyear,Areaname,Chassis_number,Fitness_certificate,Registration_date,Vehicleno_lastdigits) values(@veh_id,@usr_id,@swd,@address_proof,@d_dist,@veh_type,@veh_company,@veh_model,@veh_manuf,@areaname,@chassis_num,@fitness_cer,@reg_date,@vehno);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@veh_id", oveh_id);
            cmd.Parameters.AddWithValue("@usr_id", User_id1);
            //cmd.Parameters.AddWithValue("@name", unameT);
            cmd.Parameters.AddWithValue("@swd", oswd);
            cmd.Parameters.AddWithValue("@d_dist", d_district);
            //cmd.Parameters.AddWithValue("@dob", odob);
            //cmd.Parameters.AddWithValue("@address", oaddress);
            cmd.Parameters.AddWithValue("@address_proof", oproof);
            cmd.Parameters.AddWithValue("@veh_type", oveh_type);
            cmd.Parameters.AddWithValue("@veh_company", oveh_company);
            cmd.Parameters.AddWithValue("@veh_model", oveh_model);
            cmd.Parameters.AddWithValue("@veh_manuf", oveh_manuf);
            cmd.Parameters.AddWithValue("@areaname", oareaname);
            cmd.Parameters.AddWithValue("@chassis_num", ochassisnum);
            cmd.Parameters.AddWithValue("@fitness_cer", ofitnesscer);
            cmd.Parameters.AddWithValue("@reg_date", oregdate);
            cmd.Parameters.AddWithValue("@vehno", veh_no);
            cmd.ExecuteNonQuery();
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select user_id,name,dob,address from userregistration_table where username=@usrname", con);
            cmd1.Parameters.AddWithValue("@usrname", oid);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
       
        public void GenerateAutoID()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(User_Id) from vehicleregistration_table ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                oveh_id = "VEH" + count;
            }
            else
            {
                count = 1;
                oveh_id = "VEH" + count;
            }

        }

        
        public DataTable FetchDistrict()
        {
            OpenConection();

            DataTable dispdistrict = new DataTable();
            SqlCommand command = new SqlCommand("select * from districtcode_table ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispdistrict);
            CloseConnection();
            return dispdistrict;
        }
        
        public int GenereateVehno()
        {
            
            OpenConection();
             SqlCommand command = new SqlCommand("select max(Vehicleno_lastdigits) from vehicleregistration_table where District='" + d_district + "'", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = Convert.ToInt32(cnt);
                count++;
                //oveh_id = "VEH" + count;
            }
            else
            {
                count = 1000;
                //oveh_id = "VEH" + count;
            }
            return count;
        }
        public string Display_vehno()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select CONCAT(dtCode.code,' - ',vehreg.Vehicleno_lastdigits) from vehicleregistration_table vehreg left outer join districtcode_table dtCode on vehreg.[District] = dtCode.[District_id] where vehreg.User_Id='" + user_id+ "' and Veh_Id='" + oveh_id + "' ", con);


            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
            {
                vehicle_no = (string)cMax;

            }
            return vehicle_no;
        }
        public void UpdateVehNo()
        {
            OpenConection();
            string qry = "update vehicleregistration_table set Vehicle_no=@vehicleNo where User_Id='"+user_id+ "' and Veh_Id='"+oveh_id+"'";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@vehicleNo", vehicle_no);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
    }
}