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
    public partial class fund_transfer : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string password,client_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Text = Session["username"].ToString();
            password = Session["password"].ToString();
          
            if (!Page.IsPostBack)
            {
                lblCheck.Visible = false;
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
                    ddlTransferUsername.Items.Add(drs["username"].ToString());
                }
                con.Close();

                con.Open();
                MySqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "Select  amount from wallet where username='" + txtUsername.Text + "' ";
                cmd1.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                MySqlDataAdapter sda1 = new MySqlDataAdapter(cmd1);
                sda1.Fill(dt1);
                foreach (DataRow drs in dt1.Rows)
                {
                    txtBalance.Text = drs["amount"].ToString();
                }
                con.Close();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (float.Parse(txtBalance.Text) < float.Parse(txtAmount.Text))
            {
                lblCheck.Visible = true;
                lblCheck.Text = "Insufficient Balance";
            }
            else if (password != txtPassword.Text)
            {
                lblCheck.Visible = true;
                lblCheck.Text = "Transaction Password is Incorrect";
            }
            else
            {
                lblCheck.Visible = false;
                DateTime today = Convert.ToDateTime(DateTime.UtcNow.ToString("yyyy-MM-dd"));

                con.Open();
                MySqlCommand cmd4 = con.CreateCommand();
                cmd4.CommandType = CommandType.Text;
                cmd4.CommandText = "Select client_name from add_new_member where username='" + ddlTransferUsername.Text + "' ";
                cmd4.ExecuteNonQuery();
                DataTable dt4 = new DataTable();
                MySqlDataAdapter sda4 = new MySqlDataAdapter(cmd4);
                sda4.Fill(dt4);
                foreach (DataRow drs in dt4.Rows)
                {
                    client_name = drs["client_name"].ToString();
                }
                con.Close();

                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = @"INSERT INTO `add_amount`( `date`, `username`, `amount`, `note`, `amount_added_deducted_by`, `sender_transfer_type`, `reciver_transfer_type`,`transaction_fee`) VALUES
               ('" + today + "','" + ddlTransferUsername.Text + "','" + txtAmount.Text + "','" + txtNote.Text + "','" + txtUsername.Text + "','Credit','Debit','" + txtFees.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();


                con.Open();
                MySqlCommand cmd1 = new MySqlCommand();
                cmd1.CommandText = "Select username from wallet where username=@username";
                cmd1.Parameters.AddWithValue("@username", ddlTransferUsername.Text);
                cmd1.Connection = con;
                MySqlDataReader rd = cmd1.ExecuteReader();
                if (rd.HasRows)
                {

                }
                else
                {
                    con.Close();
                    con.Open();
                    MySqlCommand cmd2 = con.CreateCommand();
                    cmd2.CommandType = System.Data.CommandType.Text;
                    cmd2.CommandText = @"INSERT INTO `wallet`(`username`, `name`, `amount`) VALUES
                    ('" + ddlTransferUsername.Text + "','" + client_name + "','0')";
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }

                con.Close();
                con.Open();
                MySqlCommand cm1 = new MySqlCommand();
                cm1.CommandType = System.Data.CommandType.Text;
                cm1.CommandText = "UPDATE wallet SET `amount` = (amount - ('" + txtAmount.Text + "')) WHERE `username` = '" + txtUsername.Text + "' ";
                cm1.Connection = con;
                cm1.ExecuteNonQuery();
                con.Close();

                con.Open();
                MySqlCommand cm2 = new MySqlCommand();
                cm2.CommandType = System.Data.CommandType.Text;
                cm2.CommandText = "UPDATE wallet SET `amount` = (amount + ('" + txtAmount.Text + "')) WHERE `username` = '" + ddlTransferUsername.Text + "' ";
                cm2.Connection = con;
                cm2.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Fund Transfered Successfully!!')</script>");

                con.Open();
                MySqlCommand cmdn = con.CreateCommand();
                cmdn.CommandType = CommandType.Text;
                cmdn.CommandText = "Select  amount from wallet where username='" + txtUsername.Text + "' ";
                cmdn.ExecuteNonQuery();
                DataTable dtn = new DataTable();
                MySqlDataAdapter sdan = new MySqlDataAdapter(cmdn);
                sdan.Fill(dtn);
                foreach (DataRow drs in dtn.Rows)
                {
                    txtBalance.Text = drs["amount"].ToString();
                }
                con.Close();
                ddlTransferUsername.SelectedIndex = -1;
                txtNote.Text = "";
                txtPassword.Text = "";
                txtAmount.Text = "";

            }
        }
    }
}