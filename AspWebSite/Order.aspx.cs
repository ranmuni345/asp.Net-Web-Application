using BusinessLayer;
using BusinessLogic;
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AspWebSite
{
    public partial class Order : System.Web.UI.Page
    {

        double y = 0;
        double z = 0;
        double p = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            _Default df = new _Default();

            flowerId.Text = df.fcode;
            flowername.Text = df.fname;
            flowerpriceone.Text = df.fprice;
            flowerquentity.Text = df.fqentity;
            flowercategoryNameOrcode.Text = df.fcategory;
        }

        protected void orderbtn_Click(object sender, EventArgs e)
        {
           
           
          try
            {
                OrderClass oc = new OrderClass();
                Random rm = new Random();
                oc.orderId = rm.Next(214748364).ToString();

                //oc.flowercategoryNameOrCode = flowercategoryNameOrcode.Text.ToString();
                //oc.flowerId = flowerId.Text.ToString();
                //oc.flowerName = flowername.Text.ToString();
                //oc.flowerPriceone = flowerpriceone.Text.ToString();

                oc.flowercategoryNameOrCode = "rose";
                oc.flowerId = "rose";
                oc.flowerName = "rose";
                oc.flowerPriceone = "20";

                // oc.orderId = "20";
                // oc.orderId = new Random().Next(0,1000000000).ToString();

                //z = Convert.ToDouble(flowerpriceone.Text.ToString());
                //p = Convert.ToDouble(flowerquentity.Text.ToString());
                //y = z * p;

                totalPrice.Text = y.ToString();


                //oc.totalPrice = totalPrice.Text.ToString();
                //oc.flowerQuentity = flowerquentity.Text.ToString();
                oc.flowerQuentity = "40";

                oc.totalPrice = "400";
               

                if ((flowername.Text != "") && (flowerpriceone.Text != "") && (flowerquentity.Text != ""))
                {
                    if (oc.orderAdd() == 1)
                    {

                    }
                    else
                    {

                    }
                }  

            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }

        protected void cusbtn_Click(object sender, EventArgs e)
        {
            try
            {
                OrderClass oc = new OrderClass();

               
                    if ((fname.Text != "") && (lastname.Text != "") && (number.Text != "") && (email.Text != ""))
                    {
                        oc.firstName = fname.Text.ToString();
                        oc.lastName = lastname.Text.ToString();
                        oc.mobileNumber = number.Text.ToString();
                        oc.email = email.Text.ToString();

                        Random rm = new Random();
                        oc.orderId = rm.Next(2147483647).ToString();

                        if (oc.customerAdd() == 1)
                        {
                            
                        }
                        else
                        {
                            
                        }

                }
                else
                {
                    
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void shipbtn_Click(object sender, EventArgs e)
        {
            try
            {
                OrderClass oc = new OrderClass();
                if ((add2.Text != "") && (add1.Text != "") && (country.Text != "") && (city.Text != "") && (postal.Text != ""))
                {
                   
                        oc.addressLineOne = add1.Text.ToString();
                        oc.addressLineTwo = add2.Text.ToString();
                        oc.city = city.Text.ToString();
                        oc.country = country.Text.ToString();
                        oc.postalCode = postal.Text.ToString();

                        Random rm = new Random();
                        oc.orderId = rm.Next(2147483647).ToString();
                   
                }
                else
                {
                  
                }


                
                    if (oc.shipinDelatilsAdd() == 1)
                    {

                     

                    }
                    else
                    {

                       
                    }

                
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}