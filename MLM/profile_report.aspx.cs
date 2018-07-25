using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace MLM
{
    public partial class profile_report : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            count = Convert.ToInt32(Request.QueryString["Parameter"].ToString());
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From add_new_member Limit"+count;
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