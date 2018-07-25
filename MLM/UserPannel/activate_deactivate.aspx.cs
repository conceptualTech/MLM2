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
  
    public partial class activate_deactivate : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string client_name,sponsor_username,sponsor_name,member_name,email,mobile;
        protected void Page_Load(object sender, EventArgs e)
        {
            client_name = Session["username"].ToString();
            divDeactivate.Visible = false;
            divActivate.Visible = false;
            if (!Page.IsPostBack)
            {
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
                    ddlUsername.Items.Add(drs["username"].ToString());
                }
                con.Close();
            }
        }

        protected void ddlUsername_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmdf = new MySqlCommand();
            cmdf.CommandText = "Select username from add_new_member where status ='Deactivate' and username='" + ddlUsername.Text + "'";
            cmdf.Connection = con;
            MySqlDataReader rd1 = cmdf.ExecuteReader();
            if (rd1.HasRows)
            {
                divDeactivate.Visible = true;
                divActivate.Visible = false;
                con.Close();
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * From add_new_member where status='Deactivate' and username='" + ddlUsername.Text + "'";
                cmd.Connection = con;
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.SelectCommand = cmd;
                sda.Fill(ds, "add_new_member");
                datatable.DataSource = ds;
                datatable.DataBind();
                con.Close();
            }
            else
            {
                divDeactivate.Visible = false;
                divActivate.Visible = true;
                con.Close();
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * From add_new_member where status='Activate' and username='" + ddlUsername.Text + "'";
                cmd.Connection = con;
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.SelectCommand = cmd;
                sda.Fill(ds, "add_new_member");
                gvDatatable.DataSource = ds;
                gvDatatable.DataBind();
                con.Close();
            }
            con.Close();

        }

        protected void btnActivate_Click(object sender, EventArgs e)
        {
            DateTime today = Convert.ToDateTime(DateTime.UtcNow.ToString("yyyy-MM-dd"));
            con.Open();
            MySqlCommand cmd2 = new MySqlCommand("UPDATE `add_new_member` SET `status`='Activate' where `username`='" + ddlUsername.Text + "'", con);
            cmd2.ExecuteNonQuery();
           

            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select sponsor_username,sponsor_name,client_name,mobile_number,email_id from add_new_member where username='" + ddlUsername.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow drs in dt.Rows)
            {
                sponsor_username = drs["sponsor_username"].ToString();
                sponsor_name = drs["sponsor_name"].ToString();
                mobile = drs["mobile_number"].ToString();
                email = drs["email_id"].ToString();
                member_name = drs["client_name"].ToString();
            }

           
            MySqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.CommandText = @"INSERT INTO `activate_deactivate`(`sponsor_username`, `sponsor_name`, `member_name`, `member_username`, `mobile_no`, `email_id`, `date`, `status`) VALUES
           ('" + sponsor_username + "','" + sponsor_name + "','" + member_name + "','" + ddlUsername.Text + "','" + mobile + "','" + email + "','" + today + "','Activate')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('Member Activated!!')</script>");
            ddlUsername.SelectedIndex = -1;
            con.Close();
            divDeactivate.Visible = false;
            divActivate.Visible = false;
        }

        protected void btnDeactivate_Click(object sender, EventArgs e)
        {
            DateTime today = Convert.ToDateTime(DateTime.UtcNow.ToString("yyyy-MM-dd"));
            con.Open();
            MySqlCommand cmd2 = new MySqlCommand("UPDATE `add_new_member` SET `status`='Deactivate' where `username`='" + ddlUsername.Text + "'", con);
            cmd2.ExecuteNonQuery();

            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select sponsor_username,sponsor_name,client_name,mobile_number,email_id from add_new_member where username='" + ddlUsername.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow drs in dt.Rows)
            {
                sponsor_username = drs["sponsor_username"].ToString();
                sponsor_name = drs["sponsor_name"].ToString();
                mobile = drs["mobile_number"].ToString();
                email = drs["email_id"].ToString();
                member_name = drs["client_name"].ToString();
            }
           
            MySqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.CommandText = @"INSERT INTO `activate_deactivate`(`sponsor_username`, `sponsor_name`, `member_name`, `member_username`, `mobile_no`, `email_id`, `date`, `status`) VALUES
           ('" + sponsor_username + "','" + sponsor_name + "','" + member_name + "','" + ddlUsername.Text + "','" + mobile + "','" + email + "','" + today + "','Deactivate')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('Member Deactivated!!')</script>");
            ddlUsername.SelectedIndex = -1;
            con.Close();
            divDeactivate.Visible = false;
            divActivate.Visible = false;
        }
    }
}