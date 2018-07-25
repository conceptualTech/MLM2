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
    public partial class profile_manage : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string sponsor_username, searchusername;
        protected void Page_Load(object sender, EventArgs e)
        {
            sponsor_username = Session["username"].ToString();
            if (!Page.IsPostBack)
            {
                con.Open();
                MySqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "Select distinct username from add_new_member ";
                cmd1.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                MySqlDataAdapter sda1 = new MySqlDataAdapter(cmd1);
                sda1.Fill(dt1);
                foreach (DataRow drs in dt1.Rows)
                {
                    username.Items.Add(drs["username"].ToString());
                }
                con.Close();
            }
          
        }
    


        protected void username_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (username.Text == "Select Username")
            {
                sponsor_name.Text = "";
                sponsor.Text = "";
                position.Text = "";
                package.Text = "";
                client_name.Text = "";
                gender.Text = "";
                dob.Text = "";
                address.Text = "";
                country.Text = "";
                state.Text = "";
                city.Text = "";
                zipcode.Text = "";
                email.Text = "";
                mobile.Text = "";
                alter_mobile.Text = "";
                bank_name.Text = "";
                branch_name.Text = "";
                holder.Text = "";
                acc_number.Text = "";
                ifsc.Text = "";
                pan.Text = "";
            }
            else
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from add_new_member where username='" + username.Text + "' ";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                sda.Fill(dt);
                foreach (DataRow drs in dt.Rows)
                {
                    sponsor_name.Text = drs["sponsor_name"].ToString();
                    sponsor.Text = drs["sponsor_username"].ToString();
                    position.Text = drs["leg_position"].ToString();
                    package.Text = drs["package"].ToString();
                    client_name.Text = drs["client_name"].ToString();
                    gender.Text = drs["gender"].ToString();
                    dob.Text = drs["dob"].ToString();
                    address.Text = drs["address"].ToString();
                    country.Text = drs["country"].ToString();
                    state.Text = drs["state"].ToString();
                    city.Text = drs["city"].ToString();
                    zipcode.Text = drs["zipcode"].ToString();
                    email.Text = drs["email_id"].ToString();
                    mobile.Text = drs["mobile_number"].ToString();
                    alter_mobile.Text = drs["alternate_mobile_number"].ToString();
                    bank_name.Text = drs["bank_name"].ToString();
                    branch_name.Text = drs["branch_name"].ToString();
                    holder.Text = drs["account_holder_name"].ToString();
                    acc_number.Text = drs["bank_account_number"].ToString();
                    ifsc.Text = drs["ifsc_code"].ToString();
                    pan.Text = drs["pan_no"].ToString();
                }
                con.Close();
            }
        }
    }
}