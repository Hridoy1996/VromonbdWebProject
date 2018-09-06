<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>vromonbd</title>
       <link rel="stylesheet" href="login.css"/>
     <link rel="stylesheet" href="styles.css"/>
     <link rel="stylesheet" href="loginclass.css" />
     <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
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
     <style>
        .rem {
    
    padding-top:135px;
}

    </style>
</head>
     
<body>
       <form id="form1" runat="server">
     <div id='cssmenu'>      
<ul>
 
    <asp:Image ID="Image2" CssClass="janinakihobe" runat="server" ImageUrl="~/final.png" Height="25%" Width="20%" />
   
   <li class="hre" >   <a  href="home.aspx" id="homeid">Home</a> </li>
   <li  class="hre" >        <a href="buss.aspx" id="busid">Bus</a> </li>
   <li class="hre">        <a href="#micro.aspx" id="carid">Micro</a></li>
   <li  class="hre">      <a href='#t'>Contact</a></li>
</ul>
                 
    </div>

                
       
    <div class="rem">
         <div class="loginclass">

             
        <asp:Hyperlink runat="server" href="AgentLogin.aspx" id="a3">
                                Agent Login
                           </asp:Hyperlink>
             </div>
 
  
         
<fieldset>
  <legend>User Login</legend>
  

   <div class="container">
       <div class="row">
       <div class="col-25">
       <label for="username"> User Name: </label>
           </div>
       <div class="col-75">
       <asp:TextBox runat="server" type="text" id="txtUserName" placeholder="Type your username"  />
       </div>
           </div>
       <div class="row">
        <div class="col-25">
        <label for="userPassword"> Password:   </label>
        </div>
        <div class="col-75">
           
       <asp:TextBox runat="server" type="password" id="txtusetPasswordid" placeholder="Type your password"  />   
     </div>
        </div>
       <div class="row">
           <div class="col-100">
               <asp:CheckBox ID="chkRememberMe" runat="server" />
              
                 <label for="chbRemember">Remember Me</label>
           </div>
       </div>
       <div class="row">
              <div class="col-100">
         No Account ? <b><a href="create_account.aspx" target="_blank">Register Here</a></b>
                     
              </div>
          </div>
      
        <asp:Button runat="server" type="submit" OnClick="usersubmit_Click" class="loginbtn"  text="Login" id="userbtnSubmit" />
    
       </div>
   

   </fieldset>
   
           </div>

              </form>
</body>
</html>