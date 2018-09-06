<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="create_account.aspx.cs" Inherits="create_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   
      <link rel="icon" href="/favicon.ico" type="image/x-icon"/>
     <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
     <title>vromonbd</title>
     <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
     <link rel="stylesheet" href="regcss.css"/>
     <link rel="stylesheet" href="styles.css"/>

     <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'/>
     <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'/>
    <style>
        .rem {
    
    padding-top:119px;
}

    </style>
     <script>
        window.onscroll = function () { myFunction() };

        var navbar = document.getElementById("cssmenu");
        var sticky = navbar.offsetTop;

        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }
</script>  
             
</head>
<body>

<div class="form">
        <form id="form1" runat="server">
     <div id='cssmenu'>
           
           
          
            
<ul>
 
    <asp:Image ID="Image2" CssClass="janinakihobe" runat="server" ImageUrl="~/final.png" Height="25%" Width="20%" />
   
   <li class="hre" >   <a  href="home.aspx" id="homeid">Home</a> </li>
   <li  class="hre" >        <a href="buss.aspx" id="busid">Bus</a> </li>
   <li class="hre">        <a href="#car" id="carid">Car</a></li>
   <li  class="hre">      <a href='#t'>Contact</a></li>
</ul>
                 
    </div>
            <div class="rem">
<div class='login'>
  <h2 >Register</h2>
     <asp:TextBox  runat="server" id='userragnameid' name='userragname' placeholder='Enter your user name*' type='text'></asp:TextBox>
       <asp:TextBox  runat="server" id='usergmailid' name='usergmail' placeholder='Enter your gmail*' type='text'></asp:TextBox>
         <asp:TextBox  runat="server" id='usernumberid' name='usernumber' placeholder='Enter your number' type='text'></asp:TextBox>
            <asp:TextBox  runat="server" id='usercompanyid' name='usercompany' placeholder='Enter your company name' type='text'></asp:TextBox>
          <asp:TextBox  runat="server" id='userpasswordid' name='userpassword' placeholder='Enter Password*' type='password'></asp:TextBox>
           
    <asp:TextBox  runat="server" id='userconfirmpasswordid' name='userconfirmpassword' placeholder='Confirm Password*' type='password'></asp:TextBox>
<br />
    <br />
    <asp:Button ID='usersubmitid' runat="server" OnClick="usersubmitid_Click" type='submit' text="submit" />
  




    <a class='forgot' href='UserLogin.aspx'>Already have an account?</a>
    <br />
</div>
                <div class="gmailval">
                <asp:RegularExpressionValidator ID="emailexpressionid" runat="server" ControlToValidate="usergmailid" ErrorMessage="***Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Visible="true"></asp:RegularExpressionValidator>
                   <br />
                    </div>
               <div class="validation">
  <asp:CompareValidator ID="passwordvalidationid" runat="server" ControlToCompare="userpasswordid" ControlToValidate="userconfirmpasswordid" ErrorMessage="***password dont't match :(" Visible="true"></asp:CompareValidator>
           <br />
         
         </div>
                    </div>
        
  </form>
    </div>
       

    
  
</body>
</html>