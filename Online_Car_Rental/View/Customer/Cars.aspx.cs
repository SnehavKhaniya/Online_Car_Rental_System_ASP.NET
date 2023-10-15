using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Car_Rental.View.Customer
{
    public partial class Cars : System.Web.UI.Page
    {
        //Customer Module
        Models.Functions Conn;

        public override void VerifyRenderingInServerForm(Control control)
        {
            base.VerifyRenderingInServerForm(control);
        }
        private void ShowCars()
        {
            string St = "Available";
            string Query = "select * from CarTb1 where Status = '"+St+"'";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
            CustName.InnerText = Login.CName == "" ? SignUp.CName : Login.CName;    /**/
            Customer = Login.CustId == 0 ? SignUp.CustId : Login.CustId;


        }

        private void UpdateCar()
        {
            try
            {
                
                    string Status = "Booked";
                    string Query = "update CarTb1 set  Status = '{0}' where CplateNum = '{1}'";
                    Query = String.Format(Query, Status, CarList.SelectedRow.Cells[1].Text);

                    Conn.SetData(Query);
                    ShowCars();
                  //  ErrorMsg.InnerText = "Car Edited";
      }
            catch (Exception Ex)
            {
                
                InfoMsg.InnerText = Ex.Message;
            }
        }
        protected void BookBtn_Click(object sender, EventArgs e)
        {
            
            TimeSpan DDays = Convert.ToDateTime(ReturnDate.Value) - DateTime.Today.Date;
            int Days = DDays.Days;
            int DPrice;

            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
            int Fees = DPrice * Days;

            
            try
            {
                if (CarList.SelectedRow.Cells[1].Text == "")
                {
                    InfoMsg.InnerText = "Missing Information";
                }
                else
                {
                    string Query = "INSERT INTO RentTb1 VALUES(@Car, @Customer, @RentDate, @ReturnDate, @Fees)";

                    // Create a new SqlCommand with the query
                    using (SqlCommand cmd = new SqlCommand(Query, Conn.Conn))
                    {
                        // Add parameters for the values you want to insert
                        cmd.Parameters.AddWithValue("@Car", CarList.SelectedRow.Cells[1].Text);
                        cmd.Parameters.AddWithValue("@Customer", Login.CustId == 0 ? SignUp.CustId : Login.CustId);
                        cmd.Parameters.AddWithValue("@RentDate", DateTime.Now);
                        cmd.Parameters.AddWithValue("@ReturnDate", DateTime.Parse(ReturnDate.Value).Date); // Ensure proper date format
                        cmd.Parameters.AddWithValue("@Fees", Fees);

                        // Execute the query
                        Conn.Conn.Open();
                        cmd.ExecuteNonQuery();
                        Conn.Conn.Close();
                    }

                    UpdateCar();
                    ShowCars();
                    InfoMsg.InnerText = "Car Rented";
                    Session["amount"] = Fees;
                    Response.Redirect("Payment.aspx");

                }
            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
            }

        }
        string LNumber, RetDate;
        string RentDate;
        int DPrice,Customer;
        
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumber = CarList.SelectedRow.Cells[1].Text;
            
            RentDate = System.DateTime.Today.Date.ToString();
            RetDate = ReturnDate.Value;
            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);    
        }
    }
}