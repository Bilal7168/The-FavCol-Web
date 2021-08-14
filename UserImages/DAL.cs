using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Data;

namespace UserImages
{
    public class DAL
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9LIFDV6;Initial Catalog=FavColDb;Integrated Security=True");
        public bool signup(string fname, string lname, string emailaddr, string uname, string pass)
        {
            conn.Open();
            string commandPass = "select count(*) from Login where Username = '" + uname + "'";
            SqlCommand cmd = new SqlCommand(commandPass, conn);
            if (Convert.ToInt32(cmd.ExecuteScalar().ToString()) == 0)
            {
                string toinsert = "insert into Login(Username, Password) values('" + uname + "', '" + pass + "')";
                cmd = new SqlCommand(toinsert, conn);
                cmd.ExecuteNonQuery();
                toinsert = "insert into BioData(Username, Fname, Lname, Email) values('" + uname + "', '" + fname + "', '" + lname + "', '" + emailaddr + "')";
                cmd = new SqlCommand(toinsert, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            else
            {
                return false;
            }
        }

        private int randomNumber()
        {
            Random rnd = new Random();
            string literal = "";
            for (int i = 0; i < 7; i++)
            {
                literal = literal + Convert.ToString(rnd.Next(1, 9));
            }

            return Convert.ToInt32(literal);
        }

        public int loginMethod(string username, string password)
        {
            conn.Open();
            string command = "select * from Login where Username = '" + username + "' ";
            SqlCommand soc = new SqlCommand(command, conn);
            SqlDataReader extracter = soc.ExecuteReader();
            if (!extracter.HasRows)
            {
                return 0; //no rows
            }
            else
            {
                command = "select Password from Login where Username='" + username + "'";
                soc = new SqlCommand(command, conn);
                extracter.Read();
                if (extracter.GetString(1) == password)
                {
                    return 2; //success
                }
                else
                {
                    return 1; //password mismatch
                }
            }
        }

        public void mailSend(string username)
        {

            //method for getting string email
            conn.Open();
            string command = "select Email from BioData where '" + username + "' = Username";
            SqlCommand soc = new SqlCommand(command, conn);
            SqlDataReader extractor = soc.ExecuteReader();
            extractor.Read();
            //----

            int key = randomNumber();

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential("FromEmail", "FromEmailPass");
            // smtpClient.UseDefaultCredentials = true; // uncomment if you don't want to use the network credentials
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress("FromEmail");
            mail.To.Add(new MailAddress(extractor.GetString(0)));
            mail.Subject = "Password Reset Req : Validation Key";
            mail.Body = "Enter the following Key to validate: '" + key + "'";
            smtpClient.Send(mail);

            extractor.Close();
            conn.Close();

            //store the key in the database for check
            GlobalVar.ForgotPassUser = username;
            command = "insert into PasswordRes values('" + username + "', '" + key + "')";
            conn.Open();
            soc = new SqlCommand(command, conn);
            soc.ExecuteNonQuery();
            conn.Close();
            //store key and check
        }

        public bool checkValid(int key)
        {
            conn.Open();
            string command = "select [Key] from PasswordRes where Username = '" + GlobalVar.ForgotPassUser + "'";
            SqlCommand soc = new SqlCommand(command, conn);
            SqlDataReader extractor = soc.ExecuteReader();
            extractor.Read();
            if(extractor.GetInt32(0) == key)
            {
                command  = "delete from PasswordRes where Username = '" + GlobalVar.ForgotPassUser + "'";
                soc = new SqlCommand(command, conn);
                extractor.Close();
                soc.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            return false;
        }

        public void helperDestroyKey()
        {
            conn.Open();
            string command = "delete from PasswordRes";
            SqlCommand soc = new SqlCommand(command, conn);
            soc.ExecuteNonQuery();
            conn.Close();
        }

        public void changePass(string Pass)
        {
            conn.Open();
            string command = "update Login set Password = '" + Pass + "' where Username = '" + GlobalVar.ForgotPassUser + "'";
            SqlCommand soc = new SqlCommand(command, conn);
            soc.ExecuteNonQuery();
            conn.Close();
        }

        public string getEmail()
        {
            string command = "Select Email from BioData where Username = '" + GlobalVar.user +"'";
            conn.Open();
            SqlCommand soc = new SqlCommand(command, conn);
            SqlDataReader sd = soc.ExecuteReader();
            sd.Read();
            String retval = sd.GetString(0);
            sd.Close();
            conn.Close();
            return retval;
  
        }

        public string getWord()
        {
            conn.Open();
            string command = "Select Word from Choices where Username = '" + GlobalVar.user + "'";
            SqlCommand soc = new SqlCommand(command, conn);
            SqlDataReader sd = soc.ExecuteReader();
            sd.Read();
            if (sd.HasRows)
            {
                String retval = sd.GetString(0);
                sd.Close();
                conn.Close();
                return retval;
            }
            else
            {
                sd.Close();
                conn.Close();
                return "";
            }
        }

        public string getColor()
        {
            conn.Open();
            string command = "Select Color from Choices where Username = '" + GlobalVar.user + "'";
            SqlCommand soc = new SqlCommand(command, conn);
            SqlDataReader sd = soc.ExecuteReader();
            sd.Read();
            if (sd.HasRows)
            {
                String retval = sd.GetString(0);
                sd.Close();
                conn.Close();
                return retval;
            }
            else
            {
                sd.Close();
                conn.Close();
                return "";
            }
        }

        public void ProfileInsertMethod(string color, string word, string emailaddr)
        {
            string command = "Select * from Choices where Username = '" + GlobalVar.user + "'";
            conn.Open();
            SqlCommand soc = new SqlCommand(command, conn);
            SqlDataReader sd = soc.ExecuteReader();
            if (sd.HasRows)
            {
                //use the update statements here
                sd.Close();
                command = "update Choices set Color = '" + color + "' , Word = '" + word +"' where Username = '" + GlobalVar.user + "'";
                soc = new SqlCommand(command, conn);
                soc.ExecuteNonQuery();

            }
            else
            {
                //use the insert statements here
                sd.Close();
                command = "insert into Choices(Username, Color, Word) values('" + GlobalVar.user + "', '" + color + "', '" + word + "')";
                soc = new SqlCommand(command, conn);
                soc.ExecuteNonQuery();
            }
            command = "update BioData set Email = '" + emailaddr + "' where Username = '" + GlobalVar.user + "'";
            soc = new SqlCommand(command, conn);
            soc.ExecuteNonQuery();
            conn.Close();
        }

        public void GridDataView(GridView param)
        {
            string str = "Select Username from Login where Username != '" + GlobalVar.user + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(str, conn);
            DataTable dt = new DataTable();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
            DataView dv = dt.DefaultView;
            param.DataSource = dv;
            param.DataBind();
            conn.Close();
        }

    }
}