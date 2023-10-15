using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Car_Rental.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();


        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            base.VerifyRenderingInServerForm(control);
        }

        private void ShowCustomers()
        {
            string Query = "select * from CustomerTb1";
            CustomerList.DataSource = Conn.GetData(Query);
            CustomerList.DataBind();
        }


        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PasswordTb.Value == "" || PhoneTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value.ToString();
                    string CustAdd = AddTb.Value;
                    string CustPass = PasswordTb.Value;
                    string CustPhone = PhoneTb.Value;
                   
                    

                    string Query = "insert into CustomerTb1 values('{0}', '{1}', '{2}', '{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPass, CustPhone);
                    ShowCustomers();
                    Conn.SetData(Query);

                    ErrorMsg.InnerText = "Customer Added";

                }
            }
            catch (Exception)
            {
                throw;
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        int Key = 0;
        protected void CustomerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // for selecting record
            CustNameTb.Value = CustomerList.SelectedRow.Cells[2].Text;
            AddTb.Value = CustomerList.SelectedRow.Cells[3].Text;
            PasswordTb.Value = CustomerList.SelectedRow.Cells[4].Text;
            PhoneTb.Value = CustomerList.SelectedRow.Cells[5].Text;
           
           

            if (CustNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text);
            }
            //ErrorMsg.InnerText = "" + Key;
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PasswordTb.Value == "" || PhoneTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value.ToString();
                    string CustAdd = AddTb.Value;
                    string CustPass = PasswordTb.Value;
                    string CustPhone = PhoneTb.Value;
                   

                    string Query = "update CustomerTb1 set CustName = '{0}', CustAdd = '{1}', CustPassword = '{2}', CustPhone = '{3}' where CustId = '{4}'";
                    Query = String.Format(Query, CustName, CustAdd, CustPass, CustPhone, Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text));

                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Edited";
                   // Response.Redirect("~/Customer.aspx", false);
                }
            }
            catch (Exception)
            {
                throw;
            }

            CustNameTb.Value = string.Empty;
            AddTb.Value = string.Empty;
            PasswordTb.Value = string.Empty;
            PhoneTb.Value = string.Empty;

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string Query1 = "Delete from RentTb1 where Customer={0}";
                    Query1 = String.Format(Query1, Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text));

                    Conn.SetData(Query1);

                    string Query = "Delete from CustomerTb1 where CustId={0}";
                    Query = String.Format(Query, Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text));

                    Conn.SetData(Query);
                    ShowCustomers();
                     ErrorMsg.InnerText = "Customer Deleted";
                    
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

       
    }
}