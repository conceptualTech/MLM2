using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace MLM.UserPannel
{
    public partial class profile_report_view : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string client_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = Request.QueryString["Parameter"].ToString();

            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from add_new_member where username='" + lblUsername.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow drs in dt.Rows)
            {
                lblSponsorName.Text = drs["sponsor_name"].ToString();
                lblName.Text = drs["client_name"].ToString();
                lblGender.Text = drs["gender"].ToString();
                lblDob.Text = drs["dob"].ToString();
                lblAddress.Text = drs["address"].ToString();
                lblCountry.Text = drs["country"].ToString();
                lblState.Text = drs["state"].ToString();
                lblEmail.Text = drs["email_id"].ToString();
                lblMobile.Text = drs["mobile_number"].ToString();
                lblAlternate.Text = drs["alternate_mobile_number"].ToString();
                lblPincode.Text = drs["zipcode"].ToString();
            }
            con.Close();
        }
    }
}