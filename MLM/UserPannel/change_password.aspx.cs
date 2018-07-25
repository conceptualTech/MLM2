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
    public partial class change_password : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string sponsor_username,password;
        protected void Page_Load(object sender, EventArgs e)
        {
            sponsor_username = Session["username"].ToString();
            password = Session["password"].ToString();
            if (!Page.IsPostBack)
            {
                Label2.Visible = false;
                Label3.Visible = false;
                Label1.Visible = false;
                Label4.Visible = false;
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
                    user.Items.Add(drs["username"].ToString());
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(current_password.Text=="")
            {
                Label3.Visible = false;
                Label2.Visible = true;
                Label2.ForeColor = Color.White;
                Label2.Text = "Current Password Field is Empty";
            }
           else  if( current_password.Text=="")
            {
                Label3.Visible = false;
                Label2.Visible = true;
                Label2.ForeColor = Color.White;
                Label2.Text = "New Password Field is Empty";
            }
           
            else if (password != current_password.Text)
            {
                Label3.Visible = false;
                Label2.Visible = true;
                Label2.ForeColor = Color.White;
                Label2.Text = "Current Password does not match";
            }
            else if(new_password.Text!=confirm_password.Text)
            {
                Label3.Visible = false;
                Label2.Visible = true;
                Label2.ForeColor = Color.White;
                Label2.Text = "New Password and Confirm Password is not equal";
                
            }
            else if(current_password.Text==new_password.Text)
            {
                Label3.Visible = false;
                Label2.Visible = true;
                Label2.ForeColor = Color.White;
                Label2.Text = "Old Password and New Password must  not be equal";
            }
            else
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("UPDATE `add_new_member` SET `password`=@password where `username`=@username ", con);
                cmd.Parameters.AddWithValue("@password", new_password.Text);
                cmd.Parameters.AddWithValue("@username", sponsor_username);
                cmd.ExecuteNonQuery();
                con.Close();
                Label2.Visible = false;
                Label3.Visible = true;
                Label3.ForeColor = Color.White;
                Label3.Text = "Password has been changed successfully";
                Session["password"] = new_password.Text;
            }
        }

        protected void user_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(user_password.Text=="")
            {
                Label4.Visible = false;
                Label1.Visible = true;
                Label1.ForeColor = Color.White;
                Label1.Text = "New Password Field is Empty";
            }
            else if (user_password.Text != re_enter_password.Text)
            {
                Label4.Visible = false;
                Label1.Visible = true;
                Label1.ForeColor = Color.White;
                Label1.Text = "New Password and Confirm Password is not equal";
            }
            else
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("UPDATE `add_new_member` SET `password`=@password where `username`=@username ", con);
                cmd.Parameters.AddWithValue("@password", user_password.Text);
                cmd.Parameters.AddWithValue("@username", user.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                Label1.Visible = false;
                Label4.Visible = true;
                Label4.ForeColor = Color.White;
                Label4.Text = "Password has been changed successfully";
                Session["password"] = user_password.Text;
            }
        }
    }
}