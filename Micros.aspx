<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Micros.aspx.cs" Inherits="Micros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Micro</title>
   
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
   <li  class="hre" >        <a href="buss.aspx" id="busid">Bus</a> </li>
   <li class="hre active">        <a href="micro.aspx" id="microid">Micro</a></li>
   <li  class="hre">      <a href="Contact.aspx">Contact</a></li>
</ul>
                 
    </div>
        <div class="rem">
      <div class="loginclass">
       
        
        <asp:Button  ID="logoutid" CssClass="log" Text="" OnClick="logout_Click" runat="server"/>
   
 <asp:Button runat="server" CssClass="log" ID="a1" OnClick="userlogin_Click"  Text=""/>
                                
                       
        <asp:Button runat="server" CssClass="log"  id="a2" Text="Agent Login" />
                                
                          

          </div>       
   
        <div class="list_head"><h3>Available Micro/Car Operators</h3>  </div>
    <div class="busses_list">
        <ul>
                        <li class="col-md-2">Ontor Paribahan</li>
                        <li class="col-md-2">Manum Service</li>
                        <li class="col-md-2">Jk Cars</li>
                        <li class="col-md-2">Al-Mobaraka Paribahan</li>
                        <li class="col-md-2">Alhamra Paribahan</li>
                        <li class="col-md-2">Shishir Travels</li>
                        <li class="col-md-2">Milton Enterprice</li>
                        <li class="col-md-2">Comfort Line Pvt Ltd</li>
                        <li class="col-md-2">Dhaka Line</li>
                        <li class="col-md-2">Podma Express</li>
                        <li class="col-md-2">Diganta Paribahan</li>
                        <li class="col-md-2">Dipjol Enterprise</li>
                        <li class="col-md-2">Elish Paribahan</li>
                        <li class="col-md-2">Emad Enterprise</li>
                        <li class="col-md-2">Dola Transport</li>
                        <li class="col-md-2">Green view Paribahan</li>
                        <li class="col-md-2">Jonaki Enterprise</li>
                        <li class="col-md-2">Econo Service</li>
                        <li class="col-md-2">Islam Paribahan</li>
                        <li class="col-md-2">Kanak Paribahan Ltd</li>
                        <li class="col-md-2">M M Paribahan</li>
                        <li class="col-md-2">Manik Express</li>
                        <li class="col-md-2">Nabil Paribahan</li>
                        <li class="col-md-2">New S.B Super Deluxe</li>
                        <li class="col-md-2">Ranga Provat Paribahan Ltd</li>
                        <li class="col-md-2">Dilli Transport Ltd.</li>
                        <li class="col-md-2">Wasef Coach</li>
                        <li class="col-md-2">Rozina Enterprise</li>
                        <li class="col-md-2">S.B Super Deluxe</li>
                        <li class="col-md-2">S.R Travels (Pvt) Ltd</li>
                        <li class="col-md-2">Sagorika Enterprise</li>
                        
                        <li class="col-md-2">Selim Green Line</li>
                        <li class="col-md-2">Nobab Transport</li>
                        <li class="col-md-2">Shohagh Paribahan</li>
                        <li class="col-md-2">Shoukhin Paribahan</li>
                        <li class="col-md-2">Shuvo Bosundhara Paribahan</li>
                        
                    </ul>
    
    </div>
            </div>

         
    </form>
</body>
</html>
 