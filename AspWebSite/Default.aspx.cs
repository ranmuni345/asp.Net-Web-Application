using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;
using System.Data;
using System.Data.SqlClient;
using BusinessLayer;
using BusinessLogic;

namespace AspWebSite
{
    public partial class _Default : Page
    {
        public String fcode;
        public String fname;
        public String fprice;
        public String fqentity;
        public String fcategory;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    string data = "";
            //    //Datalayer and BusinessLayer to call
            //    String sql = " SELECT code,name,quentity,categoryNameOrCode,price FROM [BlackLotusDB].[dbo].[FlowerTable] ";
            //    SqlDataReader dr = DBClass.DataAdapterMethod(sql);

            //    if (dr.HasRows)
            //    {
            //        // dr.GetString("name");
            //        int i = 0;
            //        //String[] arr = new String[i];

            //        while (dr.Read())
            //        {
            //            //String val1 = dr["name"].ToString();
            //            //String val2 = dr["code"].ToString();
            //            //String val3 = dr["quentity"].ToString();
            //            //String val4 = dr["categoryNameOrCode"].ToString();
            //            //String val5 = dr["price"].ToString();

            //            //  arr1=new String[i];
            //            //  arr2=new String[i];
            //            //  arr3=new String[i];
            //            //  arr4=new String[i];
            //            //  arr5=new String[i];

            //            ////values insert
            //            //  arr1[i] = val1;
            //            //  arr2[i] = val2;
            //            //  arr3[i] = val3;
            //            //  arr4[i] = val4;
            //            //  arr5[i] = val4;

            //            //i++;

            //            int studentId = sqlRdr.GetInt32(0);
            //            string Name = sqlRdr.GetString(1);
            //            string EmailAddress = sqlRdr.GetString(2);
            //            string Gender = sqlRdr.GetString(3);
            //            data += "<tr><td>" + studentId + "</td><td>" + Name + "</td><td>" + EmailAddress + "</td><td>" + Gender + "</td></tr>";



            //            return data;
            //        }


            //    }
            //    else
            //    {
                   

            //    }

            //}
            //catch (Exception)
            //{
            //    throw;
            //}
        }
        //custom html 
        public string getStudentData()
        {
           
            try
            {
                string data = "";
                //Datalayer and BusinessLayer to call
                String sql = " SELECT code,name,quentity,categoryNameOrCode,price FROM [BlackLotusDB].[dbo].[FlowerTable] ";
                SqlDataReader dr = DBClass.DataAdapterMethod(sql);

                if (dr.HasRows)
                {
                    // dr.GetString("name");
                    int i = 0;
                    //String[] arr = new String[i];

                    while (dr.Read())
                    {
                        
                        String val1 = dr["name"].ToString();
                        String val2 = dr["code"].ToString();
                        String val3 = dr["quentity"].ToString();
                        String val4 = dr["categoryNameOrCode"].ToString();
                        String val5 = dr["price"].ToString();
                        data += "<tr><td>" + i + "</td><td>" + val1+ "</td><td>" + val2 + "</td><td>" + val4 + "</td><td>" + val5 + "</td><td>" + val3+ "</td>   </tr>";



                        i++;
                    }
                }
                else
                {


                }
                return data;
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Order.aspx");//move to the next link i.e Order.aspx

            try
            {

                //value passs to business layer Logclass variable to
                FlowerClass obj = new FlowerClass();

                //check text box empty or not
                if (flowerOrderTxt.Text != "")
                {
                    //set value to search 
                    obj.flowerId = flowerOrderTxt.Text;
                    

                    //  ExecuteNonQuery() if worked return value=truee return value=0 CtegoryClass in BusinessLayer
                    if (obj.flowerSearch() == 1)
                    {
                        //out put values
                        fcode = obj.flowerId;
                        fname= obj.flowerName;
                        fprice = obj.flowerPriceone;
                        fqentity = obj.flowerQuentity;
                        fcategory = obj.flowerCategory;
                       
                        //Bitmap Imag = obj.flowerSearch();
                        //pictureBoxFlower.Image = Imag;

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
    }

}