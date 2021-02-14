using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AspWebSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //  SqlConnection con = new SqlConnection(@"server=DESKTOP-E69Q7DF; database=db_SMS; integrity security=true");
            SqlConnection con = new SqlConnection();

            try
            {

                //1-this used to MSSQLSERVER to WIndowsAuthenticathion login
                con.ConnectionString = "Data Source=.;Initial Catalog=BlackLotusDB;Integrated Security=True";
                // String sql = " INSERT INTO [dbo].[contact] ([fname],[lname],[email],[Message]) VALUES('"+TextBox1.Text.ToString()+ "','" + TextBox2.Text.ToString() + "','" + TextBox38.Text.ToString() + "','" + TextBox37.Text.ToString() + "',)";
                //2-sqlcomman class TO PASS SQL QUERY AND CONNECTION CLASS CON
                String sql = " INSERT INTO [dbo].[contact] ([fname],[lname],[email],[Message]) VALUES(@a,@b,@c,@d)";

                SqlCommand sc = new SqlCommand(sql, con);
                sc.Parameters.AddWithValue("@a", TextBox1.Text.ToString());
                sc.Parameters.AddWithValue("@b", TextBox2.Text.ToString());
                sc.Parameters.AddWithValue("@c", TextBox38.Text.ToString());
                sc.Parameters.AddWithValue("@d", TextBox37.Text.ToString());
                con.Open();
                Console.WriteLine("CONNECTION OPEN");

                //this method used to execute aftre the sql query then intiger return intiger value
                /*
                 ExecuteNonQuery() if worked return value=1  ,  else return value=0
                 */
                if (sc.ExecuteNonQuery() > 0)
                {
                    Console.WriteLine("---INSERTED DATA---");
                }
                else
                {
                    Console.WriteLine("---EXECUTE ERROR---");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("---ERROR IN SQL CONNECTION---");
                Console.WriteLine(ex);
            }
            finally
            {
                con.Close();
                Console.WriteLine("CONNECTION CLOSE");
            }
        }
    }
}