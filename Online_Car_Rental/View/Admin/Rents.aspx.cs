using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Car_Rental.View.Admin
{
    public partial class Rents : System.Web.UI.Page
    {
        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {
            base.VerifyRenderingInServerForm(control);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowRents();
        }

        private void ShowRents()
        {

            string Query = "select * from RentTb1";
            RentList.DataSource = Conn.GetData(Query);
            RentList.DataBind();
        }
       

        private void UpdateCar()
        {
            try
            {

                string Status = "Available";
                string Query = "update CarTb1 set  Status = '{0}' where CplateNum = '{1}'";
                Query = String.Format(Query, Status, RentList.SelectedRow.Cells[2].Text);

                Conn.SetData(Query);
                //ShowRents();
                //  ErrorMsg.InnerText = "Car Edited";
            }
            catch (Exception Ex)
            {
                
                InfoMsg.InnerText = Ex.Message;
            }
        }

        private void ReturnCar()
        {
            try
            {
              
                    string Query = "Delete from RentTb1 where RentId={0}";
                    Query = String.Format(Query, RentList.SelectedRow.Cells[1].Text);

                    Conn.SetData(Query);

                ShowRents();

            }
            catch (Exception)
            {
                throw;
            }
            
        }

        string LicensePlate;
        protected void RentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LicensePlate = RentList.SelectedRow.Cells[1].Text;
        }

        

        protected void ReturnBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (RentList.SelectedRow == null)
                {
                    InfoMsg.InnerText = "Select a Rental";
                }
                else
                {
                    string car = RentList.SelectedRow.Cells[2].Text;
                    int customerId = Convert.ToInt32(RentList.SelectedRow.Cells[3].Text);
                    DateTime returnDate = DateTime.Now;
                    int delay = Convert.ToInt32(DelayTb.Value);
                    int fine = Convert.ToInt32(FineTb.Value);

                    // Use parameterized query to prevent SQL injection
                    string query = "INSERT INTO ReturnTb1 (Car, Customer, Date, Delay, Fine) VALUES (@Car, @Customer, @Date, @Delay, @Fine)";

                    UpdateCar();
                    ShowRents();
                    
                    
                    //using (SqlConnection connection = new SqlConnection("YourConnectionString"))
                    using (SqlCommand cmd = new SqlCommand(query, Conn.Conn))
                    {
                        // Add parameters to the query
                        cmd.Parameters.AddWithValue("@Car", car);
                        cmd.Parameters.AddWithValue("@Customer", customerId);
                        cmd.Parameters.AddWithValue("@Date", returnDate);
                        cmd.Parameters.AddWithValue("@Delay", delay);
                        cmd.Parameters.AddWithValue("@Fine", fine);

                        (Conn.Conn).Open();
                        cmd.ExecuteNonQuery();
                        (Conn.Conn).Close();
                    }
                    ReturnCar();

                    InfoMsg.InnerText = "Car Returned";
                    
                }
            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
                
            }
            DelayTb.Value = string.Empty;
            FineTb.Value = string.Empty;
        }
    }
}