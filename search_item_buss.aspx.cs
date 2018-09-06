using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
public partial class search_item_buss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["userinfo"];
        if (cookie != null)
        {
            Session["username"] = cookie["username"];

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

        ////////////////
            DateTime dtime = Convert.ToDateTime(Session["fdate"].ToString(), new CultureInfo("en-MX"));
            CultureInfo ci1 = new CultureInfo("en-US");
            String.Format("{0:dddd, MMMM d, yyyy}", dtime);
         //  String str = dtime.ToString("d", ci1);
        String str1 = dtime.ToString("d", ci1);

        //return
        DateTime ddtime = Convert.ToDateTime(Session["tdate"].ToString(), new CultureInfo("en-MX"));
        CultureInfo ci = new CultureInfo("en-US");
        String.Format("{0:dddd, MMMM d, yyyy}", ddtime);
        //  String str = dtime.ToString("d", ci1);
        String str2 = ddtime.ToString("d", ci);

        Session["tdate"] = ddtime.ToString("dddd, dd MMMM yyyy");
        Session["fdate"] = dtime.ToString("dddd, dd MMMM yyyy");

        hid.Text = "" + Session["f"].ToString() + " - " + Session["t"].ToString() + " from " + dtime.ToString("dddd, dd MMMM yyyy") + " to " + ddtime.ToString("dddd, dd MMMM yyyy")+"";
       
      
        if (!this.IsPostBack)
        {
            this.BindRepeater();
        }
      
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
    private void BindRepeater()
    {

     
        
        string constr = ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString;
   
        using (SqlConnection con = new SqlConnection(constr))
        {
            
            DateTime dtime = Convert.ToDateTime(Session["fdate"].ToString(), new CultureInfo("en-MX"));
            CultureInfo ci1 = new CultureInfo("en-US");

           String str = dtime.ToString("d", ci1);
       //    string dt1 = DateTime.Now.ToString("MM/dd/yyyy");
          // ClientScript.RegisterClientScriptBlock(typeof(string), "message", "alert('" + str + "')", true);
           using (SqlCommand cmd = new SqlCommand("select  TOP 100 PERCENT  name,type, ac_non_ac , plate_no , seat , cost_per_day   from vehicle where route_id in ( select route_id from route where cityname='" + Session["f"].ToString() + "' and destination ='" + Session["t"].ToString() + "' or destination='" + Session["f"].ToString() + "' and cityname ='" + Session["t"].ToString() + "' and  book_end  < '" + dtime + "'  ) and type='buss' ", con)) 
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                   
                    DataTable dt = new DataTable();
                    
                    sda.Fill(dt);
                    rptCustomers.DataSource = dt;
                    rptCustomers.DataBind();
                }
            }
        }
    }
    protected void rpHotelList_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        int plate_no;
        if (int.TryParse((string)e.CommandArgument, out plate_no))
    {
        string myString = plate_no.ToString();
        Session["plate_no"] = myString;

        String s = "";
               SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString);

               con.Open();
             
               string query = string.Format("Select name from vehicle where plate_no =  '{0}'", plate_no);

               SqlCommand cmd = new SqlCommand(query, con);
               string ss = "";
               SqlDataReader reader = cmd.ExecuteReader();
               while (reader.Read())
               {
                  s+=reader.GetString(0);
               
               }
            con.Close();
            con.Open();
               query = string.Format("Select cost_per_day from vehicle where plate_no =  '{0}'", plate_no);
               int ht=0;
               SqlCommand comd = new SqlCommand(query, con);
               SqlDataReader redr = comd.ExecuteReader();
               while (redr.Read())
               {
                   ht += redr.GetInt32(0);
               }
               con.Close();
                
               
             
               Session["bussName"] = s;
              string st = ht.ToString();
               lvl7.Text=st;
           Session["cost"]=st;
            Response.Redirect("transaction.aspx", false);
    
    
    }
      
    }
   

}