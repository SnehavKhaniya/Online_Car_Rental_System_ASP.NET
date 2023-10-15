using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Car_Rental.View.Customer
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Clear input fields on initial load
                tbCardNo.Text = "";
                
                tbCVV.Text = "";
                
                tbAmount.Text = Session["amount"].ToString();
            }
        }
        private bool SimulatePayment()
        {
            // Return true to simulate a successful payment, or false for a failed payment
            return true;
        }

        protected void BtnPay_Click(object sender, EventArgs e)
        {
            bool paymentSuccessful = SimulatePayment();

            if (paymentSuccessful)
            {
                // Payment successful
                
                lblMsg.Text = "Payment Processed Successfully!";
                Response.Redirect("PendingRentals.aspx");
            }
            else
            {
                // Payment failed
                

                lblMsg.Text = "Payment Failed. Please Try Again.";
            }
            
        }

        protected void ddlExMonth_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void tbAmount_TextChanged(object sender, EventArgs e)
        {

        }
    }
}