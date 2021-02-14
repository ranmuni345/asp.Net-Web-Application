using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace AspWebSite
{
    public partial class Contact : Page
    {
        public String val;
        protected void Page_Load(EventArgs e)
        {

        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                //BusinessLayer Logclass --> LoginSign(); method execute
                Logclass lc = new Logclass();

                lc.UserName = username.Text.ToString();//user name
                lc.Password = password.Text.ToString();//password

                int c;
                c = lc.LoginSign();
                if (c == 1)
                {
                    val = "Login Sucssess";
                }
                else
                {
                    val = "Login fail";
                }

            }
            catch (Exception)
            {
                throw;
            }
           
          //  Label1;//Frogot password
        }

        protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}