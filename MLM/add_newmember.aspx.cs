using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

using System.Data;
using System.Web.Services;
using System.Web.Script.Services;
using System.Text.RegularExpressions;
using System.Text;

namespace MLM
{
    public partial class add_newmember : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
       static List<string> positionResponse=new List<string>();
        private const String Letters = "abcdefghijklmnopqrstuvwxyz";
        private readonly char[] Alphanumeric = (Letters.ToUpper() + "0123456789").ToCharArray();
        string label = "7";
        string genrate_username,str="MLM";
        public static string payment_category_type_value;
        static string username_hidden2;

        private String genrateRandomAlphanumeric(int length)
        {
            StringBuilder result = new StringBuilder();
            Random rn = new Random();
            for (int i = 0; i < length; i++)
            {
                result.Append(Alphanumeric[rn.Next(Alphanumeric.Length)]);
            }
            return result.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            lblError.Visible = false;
            // sponsor_username.Text = Session["username"].ToString();
            //sponsor_username.Text = Session["client_name"].ToString();
            username_hidden2 = username_hidden.Value;
            genrate_username = genrateRandomAlphanumeric(Convert.ToInt32(label));
            con.Open();
            MySqlCommand cmdf = new MySqlCommand();
            cmdf.CommandText = "Select username from add_new_member where username =@username";
            cmdf.Parameters.AddWithValue("@username", genrate_username);
            cmdf.Connection = con;
            MySqlDataReader rd1 = cmdf.ExecuteReader();
            if (rd1.HasRows)
            {

                genrate_username = genrateRandomAlphanumeric(Convert.ToInt32(label)) + 1;
            }
            else
            {
                genrate_username = genrateRandomAlphanumeric(Convert.ToInt32(label));
            }
            con.Close();

            if (!Page.IsPostBack)
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select distinct package_name from add_package ";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                sda.Fill(dt);
                foreach (DataRow drs in dt.Rows)
                {
                    ddl_package.Items.Add(drs["package_name"].ToString());
                }
                con.Close();
            }
        }


        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetListofUsername(String pre)

        {
            MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
            List<string> CountryNames = new List<string>();
            con.Open();
            MySqlCommand cmd1 = new MySqlCommand();
            cmd1.CommandText = "Select username from add_new_member where (username LIKE '"+pre+"%')";
            
            cmd1.Connection = con;
            MySqlDataReader rd = cmd1.ExecuteReader();
            if (rd.HasRows)
            {
             

                while(rd.Read())

                {

                    CountryNames.Add(rd["username"].ToString());

                }
                con.Close();
            }
            else
            {
                con.Close();
            }
          

            

                return CountryNames;
            

            

        }
        [System.Web.Services.WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetPositionResponse(String position2)

        {
            
            MySqlConnection con = new MySqlConnection("Server=148.72.232.182; PORT=3306; DATABASE=mlm; UID=mlm; PASSWORD=mlm@123_");
            con.Open();
            MySqlCommand cmd1 = new MySqlCommand();
            cmd1.CommandText = "Select leg_position from add_new_member where username=@username and leg_position=@leg_position";
            cmd1.Parameters.AddWithValue("@username","BT");
            cmd1.Parameters.AddWithValue("@leg_position", position2);
            cmd1.Connection = con;
            MySqlDataReader rd = cmd1.ExecuteReader();
            if (rd.HasRows)
            {
                //lblError.Visible = true;
                //lblError.Text = "This  Position Is Already Acquired!!!";
               positionResponse.Add("This  Position Is Already Acquired!!");
                //position.SelectedIndex = -1;
            }
            else
            {
                positionResponse.Add("Success!!");
            }
           
            con.Close();



            return positionResponse;




        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            
            payment_category_type_value = payment_category_hidden.Value;
            int contentLength = File1.PostedFile.ContentLength;
            if (position.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Select Position for this Member";
            }
            else if (ddl_package.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Select Package for this Member";
            }
            else if (txt_clientName.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Name Field is Empty";
            }
            else if (ddl_gender.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Select Gender for this Member";
            }
            else if (txt_dob.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "D.o.B Field is Empty";
            }
            else if (txtZipcode.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Zipcode Field is Empty";
            }
            else if (dldCountry.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Select Country";
            }
            else if (dldCountry.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Select Country";
            }
            else if (dldState.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Select State";
            }
            else if (txtCity.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "City Field Is Empty";
            }
            else if (txtEmail.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Email Field Is Empty";
            }
            else if (txtMobile.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Mobile Field Is Empty";
            }
            else if (txtBankName.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Name Of Bank Field Is Empty";
            }
            else if (txtAccountName.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Account Holder Name Field Is Empty";
            }
            else if (txtBranchName.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Branch Name Field Is Empty";
            }
            else if (txtBankAccountNumber.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Bank Account Number Field Is Empty";
            }
            else if (txtIfscCode.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Ifsc Code Field Is Empty";
            }
            else if (txtPan.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Pan Number Field Is Empty";
            }
            else if (txtPassword.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Password Field Is Empty";
            }
           
            else if (contentLength == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Please Select Image !!!";
            }
            
            else
            {
                int length = File1.PostedFile.ContentLength;
                byte[] pic = new byte[length];


              File1.PostedFile.InputStream.Read(pic, 0, length);

                int length2 = avatarUpload.PostedFile.ContentLength;
                byte[] pic2 = new byte[length];
                DateTime today = Convert.ToDateTime(DateTime.UtcNow.ToString("yyyy-MM-dd"));

                avatarUpload.PostedFile.InputStream.Read(pic2, 0, length);
                con.Close();
                con.Open();
                String url = "http://ukeworks.com/Upload/"+str;
                //File1.PostedFile.SaveAs(Server.MapPath("http://ukeworks.com/Upload/" + str));
                MySqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = System.Data.CommandType.Text;
                if (length2 == 0&&payment_category_type_value.Contains("Free Join"))
                {
                    cmd2.CommandText = @"INSERT INTO `add_new_member`(`sponsor_username`, `sponsor_name`, `leg_position`, `package`, `client_name`, `gender`, `dob`, `address`, `zipcode`, `country`, `state`, `city`, `email_id`, `mobile_number`, `alternate_mobile_number`, `bank_name`, `account_holder_name`, `branch_name`, `bank_account_number`, `ifsc_code`, `pan_no`, `username`, `password`, `amount_paid`,`client_image`,`status`,`date_of_joining`,`payment_category`) VALUES
('" + sponsor_username.Text + "','" + sponsor_username.Text + "','" + position.Text + "','" + ddl_package.Text + "','" + txt_clientName.Text + "','" + ddl_gender.Text + "','" + txt_dob.Text + "','" + TextArea1.Value + "','" + txtZipcode.Text + "','" + dldCountry.Text + "','" + dldState.Text + "','" + txtCity.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "','" + txtAlter.Text + "','" + txtBankName.Text + "','" + txtAccountName.Text + "','" + txtBranchName.Text + "','" + txtBankAccountNumber.Text + "','" + txtIfscCode.Text + "','" + txtPan.Text + "','" + genrate_username + "','" + txtPassword.Text + "','0',@photo,'Deactivate','"+ today.ToString("yyyy-MM-dd") + "','"+payment_category_type_value+"')";
                }
                else if(length2 == 0)
                {
                    cmd2.CommandText = @"INSERT INTO `add_new_member`(`sponsor_username`, `sponsor_name`, `leg_position`, `package`, `client_name`, `gender`, `dob`, `address`, `zipcode`, `country`, `state`, `city`, `email_id`, `mobile_number`, `alternate_mobile_number`, `bank_name`, `account_holder_name`, `branch_name`, `bank_account_number`, `ifsc_code`, `pan_no`, `username`, `password`, `amount_paid`,`client_image`,`status`,`date_of_joining`,`payment_category`) VALUES
('" + sponsor_username.Text + "','" + sponsor_username.Text + "','" + position.Text + "','" + ddl_package.Text + "','" + txt_clientName.Text + "','" + ddl_gender.Text + "','" + txt_dob.Text + "','" + TextArea1.Value + "','" + txtZipcode.Text + "','" + dldCountry.Text + "','" + dldState.Text + "','" + txtCity.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "','" + txtAlter.Text + "','" + txtBankName.Text + "','" + txtAccountName.Text + "','" + txtBranchName.Text + "','" + txtBankAccountNumber.Text + "','" + txtIfscCode.Text + "','" + txtPan.Text + "','" + genrate_username + "','" + txtPassword.Text + "','" + lblPackageAmount.Text + "',@photo,'Deactivate','" + today.ToString("yyyy-MM-dd") + "','" + payment_category_type_value + "')";
                }
                else
                {
                    cmd2.CommandText = @"INSERT INTO `add_new_member`(`sponsor_username`, `sponsor_name`, `leg_position`, `package`, `client_name`, `gender`, `dob`, `address`, `zipcode`, `country`, `state`, `city`, `email_id`, `mobile_number`, `alternate_mobile_number`, `bank_name`, `account_holder_name`, `branch_name`, `bank_account_number`, `ifsc_code`, `pan_no`, `username`, `password`, `amount_paid`,`client_image`,`payment_category_image`,`status`,`date_of_joining`,`payment_category`) VALUES
('" + sponsor_username.Text + "','" + sponsor_username.Text + "','" + position.Text + "','" + ddl_package.Text + "','" + txt_clientName.Text + "','" + ddl_gender.Text + "','" + txt_dob.Text + "','" + TextArea1.Value + "','" + txtZipcode.Text + "','" + dldCountry.Text + "','" + dldState.Text + "','" + txtCity.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "','" + txtAlter.Text + "','" + txtBankName.Text + "','" + txtAccountName.Text + "','" + txtBranchName.Text + "','" + txtBankAccountNumber.Text + "','" + txtIfscCode.Text + "','" + txtPan.Text + "','" + genrate_username + "','" + txtPassword.Text + "','" + lblPackageAmount.Text + "',@photo,@payment_category_image,'Deactivate','" + today.ToString("yyyy-MM-dd") + "','" + payment_category_type_value + "')";
                    cmd2.Parameters.AddWithValue("@payment_category_image", pic2);
                }
                
                cmd2.Parameters.AddWithValue("@photo", pic);
               
                
                cmd2.ExecuteNonQuery();
                con.Close();
            }
        }

       
        protected void ddl_package_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select amount from add_package where package_name='" + ddl_package.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow drs in dt.Rows)
            {
                lblPackageAmount.Text = drs["amount"].ToString();
            }

            con.Close();
        }
    }
}