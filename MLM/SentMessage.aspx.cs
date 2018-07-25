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
    public partial class SentMessage : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string messageID;
        protected void Page_Load(object sender, EventArgs e)
        {
            messageID = Request.QueryString["Parameter"].ToString();

            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from send_mail where id='" + messageID + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow drs in dt.Rows)
            {
                lblSubject.Text = drs["subject"].ToString();
                lblFrom.Text = drs["receiver_username"].ToString();
                TextArea1.Value = drs["message"].ToString();
            }
            con.Close();
        }
    }
}