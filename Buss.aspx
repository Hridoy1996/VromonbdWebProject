<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buss.aspx.cs" Inherits="Buss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Busses</title>
       <link rel="stylesheet" href="Buss.css"/>
    <link rel="stylesheet" href="styles.css"/>
      <link rel="stylesheet" href="HOME.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 <form id="form1" runat="server">
       
            <div id='cssmenu'>
           
           
          
            
<ul>
 
    <asp:Image ID="Image2" CssClass="janinakihobe" runat="server" ImageUrl="~/final.png" Height="25%" Width="20%" />
   
   <li class="hre" >   <a  href="home.aspx" id="homeid">Home</a> </li>
   <li  class="hre active" >        <a href="buss.aspx" id="busid">Bus</a> </li>
   <li class="hre">        <a href="micros.aspx" id="microid"">Micro</a></li>
   <li  class="hre">      <a href="Contact.aspx">Contact</a></li>
</ul>
                 
    </div>
        <div class="rem">
      <div class="loginclass">
       
        
        <asp:Button  ID="logoutid" CssClass="log" Text="" OnClick="logout_Click" runat="server"/>
   
 <asp:Button runat="server" CssClass="log" ID="a1" OnClick="userlogin_Click"  Text=""/>
                                
                       
        <asp:Button runat="server" CssClass="log"  id="a2" Text="Agent Login" />
                                
                          

          </div>       
   
 
        <div class="list_head"><h3>Available Bus Operators</h3>  </div>
    <div class="busses_list">
        <ul>
                        <li class="col-md-2">Abdullah Paribahan</li>
                        <li class="col-md-2">Agomony Express</li>
                        <li class="col-md-2">Akota Transport</li>
                        <li class="col-md-2">Al-Mobaraka Paribahan</li>
                        <li class="col-md-2">Alhamra Paribahan</li>
                        <li class="col-md-2">Barkat Travels</li>
                        <li class="col-md-2">Chaklader Paribahan</li>
                        <li class="col-md-2">Comfort Line Pvt Ltd</li>
                        <li class="col-md-2">Dhaka Line</li>
                        <li class="col-md-2">Diganta Express</li>
                        <li class="col-md-2">Diganta Paribahan</li>
                        <li class="col-md-2">Dipjol Enterprise</li>
                        <li class="col-md-2">Elish Paribahan</li>
                        <li class="col-md-2">Emad Enterprise</li>
                        <li class="col-md-2">Ena Transport (Pvt) Ltd</li>
                        <li class="col-md-2">Green Line Paribahan</li>
                        <li class="col-md-2">Hanif Enterprise</li>
                        <li class="col-md-2">HIMACHOL</li>
                        <li class="col-md-2">Islam Paribahan</li>
                        <li class="col-md-2">Kanak Paribahan Ltd</li>
                        <li class="col-md-2">M M Paribahan</li>
                        <li class="col-md-2">Manik Express</li>
                        <li class="col-md-2">Nabil Paribahan</li>
                        <li class="col-md-2">New S.B Super Deluxe</li>
                        <li class="col-md-2">Ranga Provat Paribahan Ltd</li>
                        <li class="col-md-2">Relax Transport Ltd.</li>
                        <li class="col-md-2">Royal Coach</li>
                        <li class="col-md-2">Rozina Enterprise</li>
                        <li class="col-md-2">S.B Super Deluxe</li>
                        <li class="col-md-2">S.R Travels (Pvt) Ltd</li>
                        <li class="col-md-2">Sagorika Enterprise</li>
                        
                        <li class="col-md-2">Sheba Green Line</li>
                        <li class="col-md-2">Sheba Transport</li>
                        <li class="col-md-2">Shohagh Paribahan</li>
                        <li class="col-md-2">Shoukhin Paribahan</li>
                        <li class="col-md-2">Shuvo Bosundhara Paribahan</li>
                        <li class="col-md-2">Shyamoli Paribahan</li>
                        <li class="col-md-2">Soudia Air Con</li>
                        <li class="col-md-2">Soudia Coach Service</li>
                        <li class="col-md-2">SP Golden Line</li>
                        <li class="col-md-2">Star Line Special Ltd.</li>
                        <li class="col-md-2">Tisha Group</li>
                        <li class="col-md-2">Tuba Line</li>
                        <li class="col-md-2">Tungipara Express</li>
                        <li class="col-md-2">Year-71</li>
                    </ul>
    
    </div>
            </div>

         
    </form>
</body>
</html>