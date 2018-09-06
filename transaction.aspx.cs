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

public partial class transaction : System.Web.UI.Page
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

        nameid.Text = "" + Session["username"];
        if(nameid.Text.Length!=0){

             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString);

               con.Open();
             
               string query = string.Format("Select email from user_rag_table where user_name =  '{0}'", nameid.Text);

               SqlCommand cmd = new SqlCommand(query, con);
               string ss = "";
               SqlDataReader reader = cmd.ExecuteReader();
               while (reader.Read())
               {
                  ss+=reader.GetString(0);
               
               }
               emailid.Text = ss;
               con.Close();
               con.Open();

               query = string.Format("Select phn_num from user_rag_table where user_name =  '{0}'", nameid.Text);

               SqlCommand cm = new SqlCommand(query, con);
                ss = "";
                reader = cm.ExecuteReader();
               while (reader.Read())
               {
                   ss += reader.GetString(0);

               }
               con.Close();
               phnid.Text = ss;

        }
        

        route.Text = "" + Session["f"].ToString() + " - " + Session["t"].ToString();
        name.Text = "" + Session["bussName"] + "";
        fdate.Text = "From: " + Session["fdate"] + "";
        tdate.Text = "To: " + Session["tdate"] + "";
        day.Text = "Total Day(s):" + Session["day"] + "";
        one.Text = ""+Session["cost"] + "";
        int x = Int32.Parse( Session["day"].ToString());
        int tot = Int32.Parse(Session["cost"].ToString()) * x;
        two.Text = x.ToString();
        three.Text = tot.ToString();
        Label2.Text = "0";
        four.Text = "0";
        five.Text = tot.ToString(); 


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
    protected void confirm(object sender, EventArgs e)
    {
      
          SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["vromonbd_userConnectionString1"].ConnectionString);

      
               try
            {

                
                  conn.Open();
                  string insertquery = "insert into trasnaction  ( user_name,cost,start,endd,plate_no,phn_num) values (@User_name,@Cost,@Start,@Endd,@Plate_no,@Phn_num)";

                  SqlCommand comm = new SqlCommand(insertquery, conn);
               
                  comm.Parameters.AddWithValue("@User_name", nameid.Text);
   
                  comm.Parameters.AddWithValue("@Cost",five.Text);
                  DateTime dtime = Convert.ToDateTime(Session["fdate"].ToString(), new CultureInfo("en-MX"));
         
                  comm.Parameters.AddWithValue("@Start",dtime);
                    DateTime ddtime = Convert.ToDateTime(Session["tdate"].ToString(), new CultureInfo("en-MX"));
         
                  comm.Parameters.AddWithValue("@Endd", ddtime);
                  string ub=Session["plate_no"]+"";
                  comm.Parameters.AddWithValue("@Plate_no",Int32.Parse(ub));
                   comm.Parameters.AddWithValue("@Phn_num", phnid.Text);
                  comm.ExecuteNonQuery();
                 
                // 

             //   Response.Write("Registration success");
              
                conn.Close();
                conn.Open();
                string st = "update vehicle Set book_end='"+ddtime+"' where plate_no = " + Int32.Parse(ub) + " ";
                SqlCommand commm = new SqlCommand(st, conn);
                commm.ExecuteNonQuery();
                conn.Close();

                Session["tran"] = "done";
               
                Response.Redirect("Home.aspx",false);

            }
            catch (Exception ex)
            {
              
                    Response.Write("Error:" + ex.ToString());
                
            }
        }
        }
    
