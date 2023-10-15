using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Diagnostics.PerformanceData;
using System.Linq;
using System.Web;

namespace Online_Car_Rental.Models
{
    public class Functions
    {
        public SqlConnection Conn;
        private SqlCommand cmd;
        private DataTable dt;
        private string ConnStr;
        private SqlDataAdapter sda;

        public Functions()
        {
            ConnStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Sneha\OneDrive\Desktop\5_WAD\Online_Car_Rental_1 (5)\Online_Car_Rental_1\Online_Car_Rental\Online_Car_Rental\App_Data\CarRentalDB.mdf"";Integrated Security=True";
            Conn = new SqlConnection(ConnStr);
            cmd = new SqlCommand();
            cmd.Connection = Conn;
        }
        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, ConnStr);
            sda.Fill(dt);
            return dt;

        }
        public int SetData(string Query)
        {
            int rcnt = 0;
            if(Conn.State == ConnectionState.Closed)
            {
                Conn.Open();
            }
            cmd.CommandText = Query;
            rcnt = cmd.ExecuteNonQuery();
            
            Conn.Close();
            return rcnt;
        }
    }
}