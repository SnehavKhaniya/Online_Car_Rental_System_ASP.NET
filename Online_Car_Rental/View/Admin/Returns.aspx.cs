using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Car_Rental.View.Admin
{
    public partial class Returns : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowReturn();
        }
        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {
            base.VerifyRenderingInServerForm(control);
        }


        private void ShowReturn()
        {

            string Query = "select * from ReturnTb1";
            RentList.DataSource = Conn.GetData(Query);
            RentList.DataBind();
        }
    }
}