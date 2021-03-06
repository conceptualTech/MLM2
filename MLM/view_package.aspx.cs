﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace MLM
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
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            txtId.Text= gvrow.Cells[0].Text;
            txtPackageName.Text = gvrow.Cells[1].Text;
            txtAmount.Text = gvrow.Cells[2].Text;
            txtPv.Text = gvrow.Cells[3].Text;
            txtPairPrice.Text = gvrow.Cells[4].Text;
            txtReferral.Text = gvrow.Cells[5].Text;
            this.ModalPopupExtender1.Show();
        }

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            txtIDdelete.Text = gvrow.Cells[0].Text;
            this.ModalPopupExtender2.Show();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd2 = new MySqlCommand("UPDATE `add_package` SET `package_name`=@package_name, amount = @amount , pv=@pv , pair_price = @pair_price , referal_comission=@referal_comission  where `id`='"+txtId.Text+"'" , con);
            cmd2.Parameters.AddWithValue("@package_name", txtPackageName.Text);
            cmd2.Parameters.AddWithValue("@amount", txtAmount.Text);
            cmd2.Parameters.AddWithValue("@pv", txtPv.Text);
            cmd2.Parameters.AddWithValue("@pair_price", txtPairPrice.Text);
            cmd2.Parameters.AddWithValue("@referal_comission", txtReferral.Text);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Details Updated!!')</script>");
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd2 = new MySqlCommand("Delete from `add_package` where `id`='" + txtIDdelete.Text + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Details Updated!!')</script>");
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

        protected void ImgBtnInactive_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            txtInactive.Text = gvrow.Cells[0].Text;
            this.ModalPopupExtender3.Show();
        }

        protected void btnInactive_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd2 = new MySqlCommand("UPDATE `add_package` SET `status`='Inactive'  where `id`='" + txtInactive.Text + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Package Inactivate!!')</script>");
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

        protected void btnActive_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd2 = new MySqlCommand("UPDATE `add_package` SET `status`='Active'  where `id`='" + txtActive.Text + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Package Activate!!')</script>");
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

        protected void imgBtnActive_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            txtActive.Text = gvrow.Cells[0].Text;
            this.ModalPopupExtender4.Show();
        }
    }
}