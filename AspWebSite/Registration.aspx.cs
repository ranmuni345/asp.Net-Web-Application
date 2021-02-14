using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Windows;

namespace AspWebSite
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regbtn_Click(object sender, EventArgs e)
        {
            //object creat login class
            Login loginformobj = new Login();

           

                try
                {

                    //value passs to business layer Logclass variable to
                    Logclass obj = new Logclass();
                    //check if same password input or not
                    if (pas.Text == cpass.Text)
                    {
                        obj.Password = pas.Text;
                        obj.UserName = em.Text;
                        obj.Comfrimpassword = cpass.Text;

                        //  ExecuteNonQuery() if worked return value=truee return value=0

                        if (obj.Loginsignup() == 1)
                        {
                        em.Text = "";
                        pas.Text = "";
                        cpass.Text = "";

                            //  Console.WriteLine("---INSERTED DATA---");
                    }
                        else
                        {
                        em.Text = "";
                        pas.Text = "";
                        cpass.Text = "";
                    }
                    }
                    else
                    {
                    em.Text = "";
                    pas.Text = "";
                    cpass.Text = "";
                }
                }
                catch (Exception)
                {

                throw;
                }

            }
        }
}