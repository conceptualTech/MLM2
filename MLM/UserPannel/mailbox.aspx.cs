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
    public partial class mailbox : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string sponsor_username, sponsor_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            sponsor_username = Session["username"].ToString();
            sponsor_name = Session["client_name"].ToString();
            if (!Page.IsPostBack)
            {
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
                    ddlUser.Items.Add(drs["username"].ToString());
                }
                con.Close();

                con.Open();
                MySqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandText = "Select * From send_mail where sender_username='" + sponsor_username + "'";
                cmd1.Connection = con;
                MySqlDataAdapter sda1 = new MySqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                sda1.SelectCommand = cmd1;
                sda1.Fill(ds1, "send_mail");
                GridView1.DataSource = ds1;
                GridView1.DataBind();
                con.Close();

                con.Open();
                MySqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandText = "Select * From mailbox where reciver_username='" + sponsor_username + "'";
                cmd2.Connection = con;
                MySqlDataAdapter sda2 = new MySqlDataAdapter(cmd2);
                DataSet ds2 = new DataSet();
                sda2.SelectCommand = cmd2;
                sda2.Fill(ds2, "mailbox");
                datatable.DataSource = ds2;
                datatable.DataBind();
                con.Close();
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (ddlTypeuser.Text == "Single User")
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = @"INSERT INTO `mailbox`( `sender_username`, `sender_name`, `reciver_username`, `reciver_name`, `subject`, `message`,`DateTime`) VALUES
               ('" + sponsor_username + "','" + sponsor_name + "','" + ddlUser.Text + "','" + lblName.Text + "','" + txtSubject.Text + "','"+message.Value+"','"+DateTime.Now+"')";
                cmd.ExecuteNonQuery();
                con.Close();

                con.Open();
                MySqlCommand cmdl = con.CreateCommand();
                cmdl.CommandType = System.Data.CommandType.Text;
                cmdl.CommandText = @"INSERT INTO `send_mail`( `DateTime`, `sender_username`, `sender_name`, `receiver_username`, `receiver_name`, `subject`, `message`) VALUES
               ('" + DateTime.Now + "','" + sponsor_username + "','" + sponsor_name + "','" + ddlUser.Text + "','" + lblName.Text + "','" + txtSubject.Text + "','" + message.Value + "')";
                cmdl.ExecuteNonQuery();
                con.Close();

                ddlUser.SelectedIndex = -1;
                message.Value = "";
                txtSubject.Text = "";
                Response.Write("<script>alert('Message Send!!')</script>");


            }
            else
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select  username,client_name from add_new_member where username!='"+sponsor_username+"' ";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                sda.Fill(dt);
                foreach (DataRow drs in dt.Rows)
                {
                    lblUsername.Text = drs["username"].ToString();
                    lblName.Text = drs["client_name"].ToString();

                    con.Close();
                    con.Open();
                    MySqlCommand cmdh = con.CreateCommand();
                    cmdh.CommandType = System.Data.CommandType.Text;
                    cmdh.CommandText = @"INSERT INTO `mailbox`( `sender_username`, `sender_name`, `reciver_username`, `reciver_name`, `subject`, `message`,`DateTime`) VALUES
               ('" + sponsor_username + "','" + sponsor_name + "','" + lblUsername.Text + "','" + lblName.Text + "','" + txtSubject.Text + "','" + message.Value + "','"+DateTime.Now+"')";
                    cmdh.ExecuteNonQuery();
                    con.Close();
                }
                con.Close();

                con.Open();
                MySqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = System.Data.CommandType.Text;
                cmd3.CommandText = @"INSERT INTO `send_mail`( `DateTime`, `sender_username`, `sender_name`, `receiver_username`, `receiver_name`, `subject`, `message`) VALUES
               ('" + DateTime.Now + "','" + sponsor_username + "','" + sponsor_name + "','ALL','ALL','" + txtSubject.Text + "','" + message.Value + "')";
                cmd3.ExecuteNonQuery();
                con.Close();
                ddlUser.SelectedIndex = -1;
                message.Value = "";
                txtSubject.Text = "";
                Response.Write("<script>alert('Message Send To All Users!!')</script>");
            }

            con.Open();
            MySqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandText = "Select * From send_mail where sender_username='" + sponsor_username + "'";
            cmd1.Connection = con;
            MySqlDataAdapter sda1 = new MySqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            sda1.SelectCommand = cmd1;
            sda1.Fill(ds1, "send_mail");
            GridView1.DataSource = ds1;
            GridView1.DataBind();
            con.Close();
        }

        protected void ddlTypeuser_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTypeuser.Text == "Single User")
            {
                ddlUser.Visible = true;
                ddlUser.SelectedIndex = -1;
            }
            else
            {
                ddlUser.Visible = false;
                ddlUser.SelectedIndex = -1;
            }
        }

        protected void ddlUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select client_name from add_new_member where username='"+ddlUser.Text+"' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow drs in dt.Rows)
            {
              lblName.Text =drs["client_name"].ToString();
            }
            con.Close();
        }

        protected void imgBtnView_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            lblIdTransfer.Text = gvrow.Cells[0].Text;
            Response.Redirect("InboxMessage.aspx?Parameter=" + Server.UrlEncode(lblIdTransfer.Text));
        }

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {
            //ImageButton btndetails = sender as ImageButton;
            //GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            //lblDeleteId.Text = gvrow.Cells[0].Text;
            //this.ModalPopupExtender1.Show();
        }

        protected void imgBtnSent_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            lblIdTransfer.Text = gvrow.Cells[0].Text;
            Response.Redirect("SentMessage.aspx?Parameter=" + Server.UrlEncode(lblIdTransfer.Text));
        }
    }
}