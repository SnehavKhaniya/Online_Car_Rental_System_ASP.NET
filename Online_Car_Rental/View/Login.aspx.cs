using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Online_Car_Rental.View
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Conn;
        public static string CName = "";
        public static int CustId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            CName = "";
            CustId = 0;
        }
        
        protected void btLogIn_Click(object sender, EventArgs e)
        {
            String name = tbName.Text;
            String password = tbPassword.Text;

            if (name == "Admin" && password == "Admin")
            {
                CName = "Admin";
                Response.Redirect("Admin/Home.aspx");
            }
            else
            {
                string sql = "select custname, custpassword, custid from customertb1 where custname = '{0}' and custpassword = '{1}'";
                sql = string.Format(sql, name, password);
                DataTable dt = Conn.GetData(sql);

                if (dt.Rows.Count == 0)
                {
                    tbErrMsg.Text = "Invalid !!!";
                }
                else
                {
                    CName = dt.Rows[0][0].ToString();
                    CustId = Convert.ToInt32(dt.Rows[0][2].ToString());
                    Response.Redirect("Customer/Cars.aspx");
                }
            }

        }
    }
}