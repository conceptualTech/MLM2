using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Drawing;

namespace MLM.UserPannel
{
    public partial class user_overview : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                div_pnl_useroverview.Visible = false;
                div_btn_income.Visible = false;
                div_btn_referrals.Visible = false;
                div_btn_binary.Visible = false;
                div_btn_released_income.Visible = false;
                div_btn_ewallet.Visible = false;
                div_btn_business_wallet.Visible = false;
               
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select distinct username from add_new_member ";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                sda.Fill(dt);
                foreach (DataRow drs in dt.Rows)
                {
                    ddl_username.Items.Add(drs["username"].ToString());
                }
                con.Close();
            }
        }

        protected void ddl_username_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_username.Text == "Select Username")
            {

                div_pnl_useroverview.Visible = false;
                div_btn_income.Visible = false;
                div_btn_referrals.Visible = false;
                div_btn_binary.Visible = false;
                div_btn_released_income.Visible = false;
                div_btn_ewallet.Visible = false;
                div_btn_business_wallet.Visible = false;
            }
            else
            {
                div_pnl_useroverview.Visible = true;
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from add_new_member where username='" + ddl_username.Text + "' ";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                sda.Fill(dt);
                foreach (DataRow drs in dt.Rows)
                {
                    txt_username.Text = drs["username"].ToString();
                    txt_clientName.Text = drs["client_name"].ToString();
                    txt_gender.Text = drs["gender"].ToString();
                    txt_dob.Text = drs["dob"].ToString();
                    txt_email.Text = drs["email_id"].ToString();
                    txt_mobile.Text = drs["mobile_number"].ToString();
                }
                con.Close();
            }
        }

        protected void btn_income_Click(object sender, EventArgs e)
        {
            div_btn_income.Visible = true;
            div_btn_referrals.Visible = false;
            div_btn_referrals.Visible = false;
            div_btn_binary.Visible = false;
            div_btn_released_income.Visible = false;
            div_btn_ewallet.Visible = false;
            div_btn_business_wallet.Visible = false;
        }

        protected void btn_referral_Click(object sender, EventArgs e)
        {
            div_btn_referrals.Visible = true;
            div_btn_income.Visible = false;
            div_btn_binary.Visible = false;
            div_btn_released_income.Visible = false;
            div_btn_ewallet.Visible = false;
            div_btn_business_wallet.Visible = false;
        }

        protected void btn_binary_Click(object sender, EventArgs e)
        {
            div_btn_income.Visible = false;
            div_btn_referrals.Visible = false;
            div_btn_binary.Visible = true;
            div_btn_released_income.Visible = false;
            div_btn_ewallet.Visible = false;
            div_btn_business_wallet.Visible = false;
        }

        protected void btn_wallet_Click(object sender, EventArgs e)
        {
            div_btn_income.Visible = false;
            div_btn_referrals.Visible = false;
            div_btn_binary.Visible = false;
            div_btn_released_income.Visible = false;
            div_btn_ewallet.Visible = true;
            div_btn_business_wallet.Visible = false;
        }

        protected void btn_releasedIncome_Click(object sender, EventArgs e)
        {
            div_btn_income.Visible = false;
            div_btn_referrals.Visible = false;
            div_btn_binary.Visible = false;
            div_btn_released_income.Visible = true;
            div_btn_ewallet.Visible = false;
            div_btn_business_wallet.Visible = false;
        }

        protected void btn_volume_Click(object sender, EventArgs e)
        {
            div_btn_income.Visible = false;
            div_btn_referrals.Visible = false;
            div_btn_binary.Visible = false;
            div_btn_released_income.Visible = false;
            div_btn_ewallet.Visible = false;
            div_btn_business_wallet.Visible = true;
        }
    }
}