<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact | Vromon</title>
     
    <link rel="stylesheet" href="styles.css"/>
    
    <link rel="stylesheet" href="Contact.css"/>
     <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" />
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
   <li class="hre">        <a href="micros.aspx" id="microid"">Micro</a></li>
   <li  class="hre active">      <a href='Contact.aspx'>Contact</a></li>
</ul>
                 
    </div>
  
     
            <div class="jumbotron jumbotron-sm">
  <div class="rem">
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <asp:TextBox ID="name" runat="server"  class="form-control"  placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                               
                                 <asp:TextBox ID="email" runat="server" class="form-control"  placeholder="Enter email" required="required" /></div>
                        <label for="pass">
                               Password</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                             <asp:TextBox ID="pass" runat="server"  type="password"  class="form-control"  placeholder="Enter passsword" required="required" /></div>
                     
                             </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Claim</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea runat="server" name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Button runat="server" OnClick="btn" Text="Send Message" class="btn btn-primary pull-right" ID="btnContactUs"/>
                        
                    </div>
                </div>
                
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>VromonBD, LTD.</strong><br/>
                 32/A Zigatola , Road 94107<br/>
                Dhanmondi, Dhaka 2600<br/>
                <abbr title="Phone">
                    Phone:</abbr>
                (+88)01790208848
            </address>
            <address>
                <strong>Email:</strong><br>
                <a href="mailto:#">vromonbd.ltd@gmail.com</a>
            </address>
            </form>
        </div>
    </div>
</div>

            </div> 
   </div>
 <asp:Label runat="server" ID="lvl"></asp:Label>
    </form>
</body>
</html>
