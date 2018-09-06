using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UserLogin : System.Web.UI.Page
{
    static int session_chekc = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        String s = "" + Session["success"];
        if (string.Compare(s, "done") == 0)
        {

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration successfull')", true);
           
        }

        if (!IsPostBack)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                txtUserName.Text = Request.Cookies["UserName"].Value;
                txtusetPasswordid.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }
    }
    protected void usersubmit_Click(object sender, EventArgs e)
    {

       
      

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString);

        conn.Open();
        string email = "select count(*) from user_rag_table where user_name='" + txtUserName.Text + "'";
        SqlCommand com = new SqlCommand(email, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
           conn.Close();
        if (temp == 1)
        {

          conn.Open();
        string passwordString = "select password from user_rag_table where user_name='" + txtUserName.Text + "'";
        SqlCommand passcom = new SqlCommand(passwordString, conn);
            string password=passcom.ExecuteScalar().ToString().Replace(" ","");
            if(password==txtusetPasswordid.Text){
                Response.Write("pass correct");
            
                Session["username"] = txtUserName.Text;
                session_chekc = 1;

                if (chkRememberMe.Checked)
                {

                    HttpCookie cookie = new HttpCookie("userinfo");
                    cookie["username"] = txtUserName.Text;
                    cookie["password"] = txtusetPasswordid.Text;
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);

                }

                Response.Redirect("HOME.aspx", false);

            }
            else{
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter correct password')", true);
                return;
            }
        }
        else{
              Response.Write("invalid user name");
        }
     

    }
 
}