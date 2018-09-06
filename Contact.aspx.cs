using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void btn(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage(email.Text, "vromonbd.ltd@gmail.com");
        lvl.Text = pass.Text;
        msg.Subject="clim";
        msg.Body=message.Value;
        msg.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
        string s = pass.Text;
     //   System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
     //   NetworkCred.UserName="Hridoytareqmahmud@gmail.com";
       // NetworkCred.Password="";
       smtp.Credentials = new  System.Net.NetworkCredential()
       {
           UserName = email.Text,
           Password= s
       };
       smtp.EnableSsl = true;
       try
       {
           smtp.Send(msg);


       }
       catch (SmtpException) { }
     
    

}
}