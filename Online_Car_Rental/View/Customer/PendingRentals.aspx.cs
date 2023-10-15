using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Car_Rental.View.Customer
{
    public partial class PendingRentals : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
        }
        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {
            base.VerifyRenderingInServerForm(control);
        }
       

        private void ShowCars()
        {
            
            string Query = "select RentId, Car, RentDate, ReturnDate, Fees from RentTb1 where customer = '" + (Login.CustId == 0 ? SignUp.CustId : Login.CustId) + "'";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
    }
}