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
    public partial class package : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string sponsor_username;
        protected void Page_Load(object sender, EventArgs e)
        {
            sponsor_username = Session["username"].ToString();
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = @"INSERT INTO `add_package`( `package_name`, `amount`, `pv`, `pair_price`, `referal_comission`, `created_by`) VALUES
           ('" +package_name.Text + "','" + amount.Text + "','" + pv.Text + "','" + pair_price.Text + "','" + referral.Text + "','" + sponsor_username + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Package is Created!!')</script>");
            package_name.Text = "";
            amount.Text = "";
            pv.Text = "";
            pair_price.Text = "";
            referral.Text = "";
            con.Close();
        }
    }
}