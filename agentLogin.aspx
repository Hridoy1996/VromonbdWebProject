<%@ Page Language="C#" AutoEventWireup="true" CodeFile="agentLogin.aspx.cs" Inherits="agentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>vromonbd</title>
     <link rel="stylesheet" href="login.css"/>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    
</head>
<body>
   

        <div id="nav-placeholder-agent"></div>

<script>
    $(function () {
        $("#nav-placeholder-agent").load("navbar.aspx");
    });
</script>

    <form id="form2" runat="server">
  
       
<fieldset>
  <legend>Agent Login</legend>
  

   <div class="container">
       <div class="row">
       <div class="col-25">
       <label for="agentname"> Agent Name: </label>
           </div>
       <div class="col-75">
       <asp:TextBox runat="server" type="text" id="agentnameid" placeholder="Type your agent name"  />
       </div>
           </div>
       <div class="row">
        <div class="col-25">
        <label for="agentPassword"> Password:   </label>
        </div>
        <div class="col-75">
           
       <asp:TextBox runat="server" type="password" id="agentpasswordid" placeholder="Type your password"  />   
     </div>
        </div>
       <div class="row">
           <div class="col-100">
               <asp:CheckBox ID="chkRememberMeAgent" runat="server" />
              
                 <label for="chbRemember">Remember Me</label>
           </div>
       </div>
       <div class="row">
              <div class="col-100">
         No Account ? <b><a href="create_account.aspx" target="_blank">Register Here</a></b>
                     
              </div>
          </div>

          <asp:Button runat="server" type="submit" class="loginbtn"  text="Login" id="agentbtnSubmit" />
    
       </div>
   

   </fieldset>


              </form>
</body>
</html>
