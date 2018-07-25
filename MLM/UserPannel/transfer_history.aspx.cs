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
    public partial class transfer_history : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string client_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            client_name = Session["username"].ToString();
            divGridView.Visible = false;
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
                    ddlUsername.Items.Add(drs["username"].ToString());
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            divGridView.Visible = true;
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From add_amount where username='"+ddlUsername.Text+"' and date between '"+TextBox1.Text+"' and '"+TextBox2.Text+"'";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "add_amount");
            datatable.DataSource = ds;
            datatable.DataBind();
            con.Close();
        }

        protected void datatable_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            datatable.PageIndex = e.NewPageIndex;
            divGridView.Visible = true;
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From add_amount where username='" + ddlUsername.Text + "' and date between '" + TextBox1.Text + "' and '" + TextBox2.Text + "'";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "add_amount");
            datatable.DataSource = ds;
            datatable.DataBind();
            con.Close();
        }
    }
}