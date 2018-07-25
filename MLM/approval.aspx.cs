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
    public partial class approval : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string client_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            client_name = Session["username"].ToString();
           
            if (!Page.IsPostBack)
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * From add_new_member where approve_disapprove_status='Disapprove'";
                cmd.Connection = con;
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.SelectCommand = cmd;
                sda.Fill(ds, "add_new_member");
                datatable.DataSource = ds;
                datatable.DataBind();
                con.Close();
            }
        }

        protected void datatable_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            datatable.PageIndex = e.NewPageIndex;
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From add_new_member where approve_disapprove_status='Disapprove'";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "add_new_member");
            datatable.DataSource = ds;
            datatable.DataBind();
            con.Close();
        }

        protected void btnApproved_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in datatable.Rows)
            {
                con.Close();
                con.Open();
                MySqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                CheckBox status = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                txtId.Text = (((Label)row.FindControl("lblId")).Text);
               
                if (status.Checked)
                {
                    MySqlCommand cmd2 = new MySqlCommand("UPDATE `add_new_member` SET `approve_disapprove_status`='Approve' where `id`='" + txtId.Text + "'", con);
                    cmd2.ExecuteNonQuery();
                }
            }
            con.Close();
            Response.Write("<script>alert('Selected Members Get Approved!!')</script>");
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From add_new_member where approve_disapprove_status='Disapprove'";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "add_new_member");
            datatable.DataSource = ds;
            datatable.DataBind();
            con.Close();
        }
    }
}