using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Online_Car_Rental.View
{
    public partial class SignUp : System.Web.UI.Page
    {
        Models.Functions Con;
        public static string CName = "";
        public static int CustId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            CName = "";
            CustId = 0;
        }


        protected void btSignUp_Click(object sender, EventArgs e)
        {
            String name = tbCName.Text;
            String address = tbCAddress.Text;
            String password = tbCPassword.Text;
            String phone = tbCPhone.Text;



            string insQuery = "INSERT INTO CustomerTb1 (CustName, CustAdd, CustPassword, CustPhone) VALUES (@Name, @Address, @Password, @Phone)";
            string selQuery = "SELECT COUNT(*) FROM CustomerTb1 Where CustPhone = @Phone";

            Con.Conn.Open();

            try
            {

                using (SqlCommand selCmd = new SqlCommand(selQuery, Con.Conn))
                {
                    selCmd.Parameters.AddWithValue("@Phone", phone);
                    int count = (int)selCmd.ExecuteScalar();

                    if (count == 0)
                    {
                        using (SqlCommand cmd = new SqlCommand(insQuery, Con.Conn))
                        {
                            cmd.Parameters.AddWithValue("@Name", name);
                            cmd.Parameters.AddWithValue("@Address", address);
                            cmd.Parameters.AddWithValue("@Password", password);
                            cmd.Parameters.AddWithValue("@Phone", phone);

                            cmd.ExecuteNonQuery();
                        }
                        

                        string sql = "select custname, custpassword, custid from customertb1 where custname = '{0}' and custpassword = '{1}'";
                        sql = string.Format(sql, name, password);
                        DataTable dt = Con.GetData(sql);
                        CName = dt.Rows[0][0].ToString();
                        CustId = Convert.ToInt32(dt.Rows[0][2].ToString());

                        Response.Redirect("Customer/Cars.aspx");

                    }
                    else
                    {
                        tbErrMsg.Text = "***Account already exist on this email..";
                    }
                }

            }
            catch (Exception ex)
            {
                tbErrMsg.Text = ex.Message;
            }


            Con.Conn.Close();


        }
    }
}