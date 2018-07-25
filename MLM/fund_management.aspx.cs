using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Drawing;

namespace MLM
{
    public partial class fund_management : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string sponsor_username,sponsor_name,client_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            sponsor_username = Session["username"].ToString();
            sponsor_name = Session["client_name"].ToString();
            if (!Page.IsPostBack)
            {
                Label2.Visible = false;
                Label1.Visible = false;
              
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select distinct username from add_new_member  where approve_disapprove_status='Approve'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                sda.Fill(dt);
                foreach (DataRow drs in dt.Rows)
                {
                    user.Items.Add(drs["username"].ToString());
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "Select client_name from add_new_member where username='" + user.Text + "' ";
            cmd4.ExecuteNonQuery();
            DataTable dt4 = new DataTable();
            MySqlDataAdapter sda4 = new MySqlDataAdapter(cmd4);
            sda4.Fill(dt4);
            foreach (DataRow drs in dt4.Rows)
            {
                client_name = drs["client_name"].ToString();
            }
            con.Close();

            DateTime today =Convert.ToDateTime( DateTime.UtcNow.ToString("yyyy-MM-dd"));
            if(amount.Text=="")
            {
                Label1.Visible = true;
                Label2.Visible = false;
                Label1.ForeColor = Color.White;
                Label1.Text = "Amount Field is Empty";
            }
            else if(note.Text=="")
            {
                Label1.Visible = true;
                Label2.Visible = false;
                Label1.ForeColor = Color.White;
                Label1.Text = "Note Field is Empty";
            }
            else
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = @"INSERT INTO `add_amount`( `date`, `username`, `amount`, `note`, `amount_added_deducted_by`, `sender_transfer_type`, `reciver_transfer_type`,`transaction_fee`) VALUES
               ('" + today + "','" + user.Text + "','" + amount.Text + "','" + note.Text + "','" + sponsor_username + "','Credit','Debit','0.00')";
                cmd.ExecuteNonQuery();
                con.Close();

                con.Open();
                MySqlCommand cmd1 = new MySqlCommand();
                cmd1.CommandText = "Select username from wallet where username=@username";
                cmd1.Parameters.AddWithValue("@username", user.Text);
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
                    ('" + user.Text + "','" + client_name + "','0')";
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }

                con.Close();
                con.Open();
                MySqlCommand cm1 = new MySqlCommand();
                cm1.CommandType = System.Data.CommandType.Text;
                cm1.CommandText = "UPDATE wallet SET `amount` = (amount + ('" + amount.Text + "')) WHERE `username` = '"+user.Text+"' ";
                cm1.Connection = con;
                cm1.ExecuteNonQuery();
                con.Close();

                Label1.Visible = false;
                Label2.Visible = true;
                Label2.ForeColor = Color.White;
                Label2.Text = "Fund Added Successfully";
                user.SelectedIndex = -1;
                amount.Text = "";
                note.Text = "";
            }
        }

        protected void user_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void deduct_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "Select client_name from add_new_member where username='" + user.Text + "' ";
            cmd4.ExecuteNonQuery();
            DataTable dt4 = new DataTable();
            MySqlDataAdapter sda4 = new MySqlDataAdapter(cmd4);
            sda4.Fill(dt4);
            foreach (DataRow drs in dt4.Rows)
            {
                client_name = drs["client_name"].ToString();
            }
            con.Close();

            DateTime today = Convert.ToDateTime(DateTime.UtcNow.ToString("yyyy-MM-dd"));
            if (amount.Text == "")
            {
                Label1.Visible = true;
                Label2.Visible = false;
                Label1.ForeColor = Color.White;
                Label1.Text = "Amount Field is Empty";
            }
            else if (note.Text == "")
            {
                Label1.Visible = true;
                Label2.Visible = false;
                Label1.ForeColor = Color.White;
                Label1.Text = "Note Field is Empty";
            }
            else
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = @"INSERT INTO `add_amount`( `date`, `username`, `amount`, `note`, `amount_added_deducted_by`, `sender_transfer_type`, `reciver_transfer_type`,`transaction_fee`) VALUES
               ('" + today + "','" + user.Text + "','" + amount.Text + "','" + note.Text + "','" + sponsor_username + "','Debit','Credit','0.00')";
                cmd.ExecuteNonQuery();
                con.Close();

                con.Open();
                MySqlCommand cmd1 = new MySqlCommand();
                cmd1.CommandText = "Select username from wallet where username=@username";
                cmd1.Parameters.AddWithValue("@username", user.Text);
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
                    ('" + user.Text + "','" + client_name + "','0')";
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }

                con.Close();
                con.Open();
                MySqlCommand cm1 = new MySqlCommand();
                cm1.CommandType = System.Data.CommandType.Text;
                cm1.CommandText = "UPDATE wallet SET `amount` = (amount - ('" + amount.Text + "')) WHERE `username` = '" + user.Text + "' ";
                cm1.Connection = con;
                cm1.ExecuteNonQuery();
                con.Close();

                Label1.Visible = false;
                Label2.Visible = true;
                Label2.ForeColor = Color.White;
                Label2.Text = "Fund Deducted Successfully";
                user.SelectedIndex = -1;
                amount.Text = "";
                note.Text = "";
            }
        }
    }
}