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
    public partial class search_member : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string client_name;
        public static string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            divSearch.Visible = false;
           // client_name = Session["username"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            divSearch.Visible = true;
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From add_new_member where client_name like '%"+txtSearch.Text+"%' or city like '%"+txtSearch.Text+"%' or mobile_number like '%"+txtSearch.Text+"%'";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "add_new_member");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            username = gvrow.Cells[1].Text;
            Response.Redirect("Search_profile_manage.aspx?Parameter=" + Server.UrlEncode(username));
        }
    }
}