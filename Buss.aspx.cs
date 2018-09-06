using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s = "" + Session["username"];


        if (!string.IsNullOrEmpty(s))
        {

            a1.Text = "Welcome " + Session["username"] + " |";
            logoutid.Text = "Logout";
            a1.Enabled = false;


        }
        else
        {
            a1.Text = "User login";
        }


    }
    protected void logout_Click(object sender, EventArgs e)
    {

        logoutid.Text = "";
        Session["username"] = "";
        a1.Text = "User Login";
        a1.Enabled = true;

    }
    protected void userlogin_Click(object sender, EventArgs e)
    {


        Response.Redirect("userlogin.aspx", false);
    }



}