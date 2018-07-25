using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net;
using System.IO;

namespace MLM.UserPannel
{
    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string sponsor_user, sponsor_name, ip;
        public static string address;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static string GetIPAddress()
        {
            address = "";
            WebRequest request = WebRequest.Create("http://checkip.dyndns.org/");
            using (WebResponse response = request.GetResponse())
            using (StreamReader stream = new StreamReader(response.GetResponseStream()))
            {
                address = stream.ReadToEnd();
            }

            int first = address.IndexOf("Address: ") + 9;
            int last = address.LastIndexOf("</body>");
            address = address.Substring(first, last - first);

            return address;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            GetIPAddress();

            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = @"INSERT INTO `activity_history`( `date_time`, `ip_address`, `username`) VALUES
           ('" + DateTime.Now + "','" + address + "','" + username.Text + "')";
            cmd.ExecuteNonQuery();

            con.Close();

            string query = "select username,password,sponsor_username,sponsor_name,client_name from `add_new_member` where `username` = '" + username.Text + "' and `password` = '" + password.Text + "'  ";
            MySqlDataAdapter sda1 = new MySqlDataAdapter(query, con);
            DataTable dtbl = new DataTable();
            sda1.Fill(dtbl);
            foreach (DataRow item in dtbl.Rows)
            {
                sponsor_user = item["username"].ToString();
                sponsor_name = item["client_name"].ToString();
            }
            if (dtbl.Rows.Count == 1)
            {
                Session["username"] = sponsor_user;
                Session["client_name"] = sponsor_name;
                Session["password"] = password.Text;
                Response.Redirect("UserDashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('check login details!!')</script>");
            }
        }
    }
}
        
    
