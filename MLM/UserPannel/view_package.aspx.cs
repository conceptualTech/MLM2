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
    public partial class view_package : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
        string client_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            client_name = Session["username"].ToString();
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * From add_package where status='Active' ";
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "add_package");
            gvActive.DataSource = ds;
            gvActive.DataBind();
            con.Close();

            con.Open();
            MySqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandText = "Select * From add_package where status='Inactive' ";
            cmd1.Connection = con;
            MySqlDataAdapter sda1 = new MySqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            sda1.SelectCommand = cmd1;
            sda1.Fill(ds1, "add_package");
            gvInactive.DataSource = ds1;
            gvInactive.DataBind();
            con.Close();

            
        }

        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {
          
        }

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {
          
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            
        }

        protected void ImgBtnInactive_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void btnInactive_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnActive_Click(object sender, EventArgs e)
        {
           
        }

        protected void imgBtnActive_Click(object sender, ImageClickEventArgs e)
        {
            
        }
    }
}