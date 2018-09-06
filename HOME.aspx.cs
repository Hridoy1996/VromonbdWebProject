using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HOME : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
      
        HttpCookie cookie = Request.Cookies["userinfo"];
        if (cookie != null)
        {
            Session["username"] = cookie["username"];

        }
        String sv = "" + Session["tran"] + "";
        if (!string.IsNullOrEmpty(sv))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Booking complete')", true);
             
        }
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
    [WebMethod]
    public static List<string> getUserNames(string username)
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString);

        con.Open();
        List<string> usernames = new List<string>();

        string query = string.Format("Select name from placeList where name like '{0}%'", username);
        
        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {

            usernames.Add(reader.GetString(0));
        }
        return usernames;
    }



    void agentloginid(object sender, EventArgs e)
    {
        Response.Redirect("agentLogin.aspx", false);

    }
    
    void bussid(object sender, EventArgs e)
    {
        Response.Redirect("Buss.aspx", false);

    }
   
    protected void logout_Click(object sender, EventArgs e)
    {

        logoutid.Text = "";
        Session["username"] = "";
        a1.Text = "User Login";
      
        a1.Enabled = true;
        if (Request.Cookies["userinfo"] != null)
        {
            HttpCookie myCookie = new HttpCookie("userinfo");
            myCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(myCookie);
        }

    }
    protected void userlogin_Click(object sender, EventArgs e)
    {
        
       
        Response.Redirect("userlogin.aspx", false);
    }
    protected void imagetipa(object sender, EventArgs e)
    {
        Response.Redirect("userlogin.aspx", false);
    }
    protected void search_buss(object sender, EventArgs e)
    {

        if (txtfromcityname.Text.Length == 0 || txttocityname.Text.Length == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter Your Location')", true);
            return;
        }

        if (depart.Text.Length == 0 || returndate.Text.Length == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter Journey Date')", true);
            return;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString);

        con.Open();
        Session["f"] = txtfromcityname.Text.Trim();
        Session["t"] = txttocityname.Text.Trim();
        Session["fdate"] = depart.Text.Trim();
        Session["tdate"] = returndate.Text.Trim();
   // this is for date difference   
        DateTime dt1 = DateTime.Parse(depart.Text.Trim());
        DateTime dt2 = DateTime.Parse(returndate.Text.Trim());

        TimeSpan x = dt2.Subtract(dt1);
        int days = x.Days+1;
        string myString = days.ToString();
        
        Session["day"] = myString;
        Response.Redirect("search_item_buss.aspx", false);
    }
    protected void search_car(object sender, EventArgs e)
    {
      
        Session["f"] = txtfromcityname.Text;
        Session["t"] = txttocityname.Text;
        Session["fdate"] = depart.Text;
        Response.Redirect("searchcaritem.aspx", false);
        
       

    }
   
}