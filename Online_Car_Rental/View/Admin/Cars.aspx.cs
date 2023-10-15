using Online_Car_Rental.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Car_Rental.View.Admin
{
    public partial class Cars : System.Web.UI.Page
    {
        
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowCars();

        }
        //Adding this method to solve the error we were getting

        public override void VerifyRenderingInServerForm(Control control)
        {
            base.VerifyRenderingInServerForm(control);
        }
        private void ShowCars()
        {
           
            string Query = "select * from CarTb1";
            CarList.DataSource = Con.GetData(Query);
            CarList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(LNumberTb.Value == "" || BrandTb.Value == "" || ModelTb.Value == "" || PriceTb.Value == "" || ColorTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumberTb.Value;
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = AvailableCb.SelectedValue;
                     string Query = "insert into CarTb1 values('{0}', '{1}', '{2}', {3}, '{4}', '{5}')";
                     Query = String.Format(Query,PlateNum,Brand, Model, Price, Color, Status);
                   
                    Con.SetData(Query);
                    ShowCars();
                    ErrorMsg.InnerText = "Car Added";

                }
            }
            catch(Exception)
            {
                ErrorMsg.InnerText = "You Clicked Save while you have to click Edit...";
            }
            LNumberTb.Value = string.Empty;
            BrandTb.Value = string.Empty;
            ModelTb.Value = string.Empty;
            PriceTb.Value = string.Empty;
            ColorTb.Value = string.Empty;
        }
        
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // for selecting record
            LNumberTb.Value = CarList.SelectedRow.Cells[1].Text;
            BrandTb.Value = CarList.SelectedRow.Cells[2].Text;
            ModelTb.Value = CarList.SelectedRow.Cells[3].Text;
            PriceTb.Value = CarList.SelectedRow.Cells[4].Text;
            ColorTb.Value = CarList.SelectedRow.Cells[5].Text;
            AvailableCb.SelectedValue = CarList.SelectedRow.Cells[6].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumberTb.Value == "" || BrandTb.Value == "" || ModelTb.Value == "" || PriceTb.Value == "" || ColorTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumberTb.Value.ToString();
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = AvailableCb.SelectedValue;
                    string Query = "update CarTb1 set CPlateNum = '{0}', Brand = '{1}', Model = '{2}', Price = {3}, Color = '{4}', Status = '{5}' where CPlateNum = '{0}'";
                    Query = String.Format(Query, PlateNum, Brand, Model, Price, Color, Status);

                    Con.SetData(Query);
                    ShowCars();
                    ErrorMsg.InnerText = "Car Edited";

                    


                }
            }
            catch (Exception)
            {
                throw;
            }
            LNumberTb.Value = string.Empty;
            BrandTb.Value = string.Empty;
            ModelTb.Value = string.Empty;
            PriceTb.Value = string.Empty;
            ColorTb.Value = string.Empty;
        }



        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumberTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumberTb.Value;

                    string Query1 = "Delete from RentTb1 where Car='{0}'";
                    Query1 = String.Format(Query1, PlateNum);
                    Con.SetData(Query1);

                    string Query = "Delete from CarTb1 where CPlateNum='{0}'";
                    Query = String.Format(Query, PlateNum);

                    Con.SetData(Query);
                    ShowCars();
                    ErrorMsg.InnerText = "Car Deleted";

                }
            }
            catch (Exception)
            {
                throw;
            }
            LNumberTb.Value = string.Empty;
            BrandTb.Value = string.Empty;
            ModelTb.Value = string.Empty;
            PriceTb.Value = string.Empty;
            ColorTb.Value = string.Empty;
        }

     
    }
}