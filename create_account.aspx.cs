using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class create_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["success"] = "";
      
    }
    protected void usersubmitid_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString);

        conn.Open();
        string email = "select count(*) from user_rag_table where user_name='" + userragnameid.Text + "'";
        SqlCommand com = new SqlCommand(email, conn);
       int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        if (temp == 1)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User name already exists')", true);
            return;
        }
       

        email = "select count(*) from user_rag_table where email='" + usergmailid.Text + "'";
        com = new SqlCommand(email, conn);
        int  tmp = Convert.ToInt32(com.ExecuteScalar().ToString());
        if (tmp== 1)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('gmail already exists')", true);
            return;
        }

        conn.Close();

        if (userragnameid.Text.Length == 0)
        {
          
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('user name can not be empty ')", true);
            return;
        }
        else   if (usergmailid.Text.Length == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter email')", true);
            return;

        }
        else if (userpasswordid.Text.Length == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter password')", true);
            return;

        }
        else if (userconfirmpasswordid.Text.Length == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please confirm password')", true);
            return;

        }
           
        else
        {

            try
            {
                Guid newGUID = Guid.NewGuid();

                
                conn.Open();
                string insertquery = "insert into user_rag_table ( id,user_name,email,phn_num,companay_name,password,confirmpassword) values (@Id,@User_name,@Email,@Phn_num,@Companay_name,@Password,@Confirmpassword)";

                SqlCommand comm = new SqlCommand(insertquery, conn);
                comm.Parameters.AddWithValue("@Id", newGUID.ToString());
                comm.Parameters.AddWithValue("@User_name", userragnameid.Text);
                comm.Parameters.AddWithValue("@Email", usergmailid.Text);
                comm.Parameters.AddWithValue("@Phn_num", usernumberid.Text);
                comm.Parameters.AddWithValue("@Companay_name", usercompanyid.Text);
                comm.Parameters.AddWithValue("@Password", userpasswordid.Text);
                comm.Parameters.AddWithValue("@Confirmpassword", userconfirmpasswordid.Text);
                comm.ExecuteNonQuery();
                Session["success"] = "done";
                  Response.Redirect("UserLogin.aspx");

             //   Response.Write("Registration success");
                
                conn.Close();


            }
            catch (Exception ex)
            {
              
                    Response.Write("Error:" + ex.ToString());
                
            }
        }
        }
    }



