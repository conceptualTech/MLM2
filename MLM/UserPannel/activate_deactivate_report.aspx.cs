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
    public partial class activate_deactivate_report : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        protected void Page_Load(object sender, EventArgs e)
        {
            divDaily.Visible = false;
            divMonthly.Visible = false;
        }

        protected void btnDaily_Click(object sender, EventArgs e)
        {
            divDaily.Visible = true;
            divMonthly.Visible = false;
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From activate_deactivate  where  date='" + dtpDaily.Text + "'";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "activate_deactivate");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnMonthly_Click(object sender, EventArgs e)
        {
            divDaily.Visible = false;
            divMonthly.Visible = true;
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From activate_deactivate  where  date between '" + dtpDateTo.Text + "' and '" + dtpDateFrom.Text + "'";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "activate_deactivate");
            datatable.DataSource = ds;
            datatable.DataBind();
            con.Close();
        }
    }
}