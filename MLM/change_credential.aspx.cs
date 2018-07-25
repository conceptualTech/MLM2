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
    public partial class change_credential : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["username"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE `add_new_member` SET `username`=@new_username where `username`=@username ", con);
            cmd.Parameters.AddWithValue("@new_username", new_username.Text);
            cmd.Parameters.AddWithValue("@username",username.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Username Changed!!')</script>");
            con.Close();
            new_username.Text = "";
        }
    }
}