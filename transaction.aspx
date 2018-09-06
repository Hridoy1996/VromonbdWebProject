<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transaction.aspx.cs" Inherits="transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="styles.css"/>
    <link rel="stylesheet" href="transaction.css" />
       <link rel="stylesheet" href="loginclass.css" />
    <title>Transaction | Vromon</title>
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
    <asp:Image ID="Image2" CssClass="janinakihobe" runat="server" ImageUrl="~/final.png" Height="22%" Width="18%" />
   <li class="hre" >   <a  href="home.aspx" id="homeid">Home</a> </li>
   <li  class="hre" >        <a href="buss.aspx" id="busid">Bus</a> </li>
   <li class="hre">        <a href="micros.aspx" id="carid">Micro</a></li>
   <li  class="hre">      <a href='#t'>Contact</a></li>
</ul>
                 
    </div>
  <div class="rem">

        <div class="loginclass">
       
        
        <asp:Button  ID="logoutid" CssClass="log" Text="" OnClick="logout_Click" runat="server"/>
   
 <asp:Button runat="server" CssClass="log" ID="a1" OnClick="userlogin_Click"  Text=""/>
                                
                       
        <asp:Button runat="server" CssClass="log"  id="a2" Text="Agent Login" />
                                
                          

          </div>  

      <div class="form-style-3">
          <div class="passinfo">
<fieldset><legend>Passenger Details</legend>
<label for="field1"><span>Name <span class="required">*</span></span><asp:TextBox runat="server" type="text" class="input-field" ID="nameid"  /></label>
<label for="field2"><span>Email <span class="required"></span></span><asp:TextBox runat="server" type="email" class="input-field" ID="emailid" /></label>
<label for="field3"><span>Phone <span class="required">*</span></span><asp:TextBox runat="server" type="text" class="input-field" ID="phnid"  /></label>
<label for="field4"><span>Gender</span><asp:DropDownList ID="DdlMonths" runat="server">
    <asp:ListItem Enabled="true" Text="Select Gender" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Male" Value="1"></asp:ListItem>
    <asp:ListItem Text="Female" Value="2"></asp:ListItem>
   
</asp:DropDownList></label>
</fieldset></div>
<div class="vertical">

</div></div>
     
     <div  class="journeydetails">
        <h3><asp:Label ID="Label1" runat="server"> Journey Details</asp:Label></h3>
        <hr />
       <div class="route"> <asp:Label runat="server" ID="route"> </asp:Label></div>
        <br />
        <div class="name"> <asp:Label runat="server" ID="name"> </asp:Label></div>
        <div class="bondhu">
         <div class="fdate"> <asp:Label runat="server" ID="fdate"> </asp:Label></div>
         <div class="tdate"> <asp:Label runat="server" ID="tdate"> </asp:Label></div>
         <div class="day"> <asp:Label runat="server" ID="day"> </asp:Label></div>
            </div>

    </div>
      <br />
      <br />
      <div class="line">
         <hr />
      </div>
    <br />
      <br />
      <div class="payment_details">
          <div class="form-style-3">
          <div class="passinfo">
<fieldset><legend>Payment Details</legend>
    <div class="transaction">
        <table id="albums"  cellpadding="8px"  >
        <tr class="row">
            <td>Cost-per-day </td>
            <td><asp:Label CssClass="hlw" runat="server" Id="one" Text="this"></asp:Label></td>
        </tr>
       <tr class="row">
             <td>Days</td>
            <td><asp:Label CssClass="hlw"  runat="server" Id="two"></asp:Label></td>
        </tr>  
       <tr class="row">
             <td>Total-cost</td>
            <td><asp:Label CssClass="hlw"  runat="server" Id="three"></asp:Label></td>
        </tr> 
          <tr class="row">
             <td>Processing-fee</td>
            <td><asp:Label CssClass="hlw"  runat="server" Id="Label2"></asp:Label></td>
        </tr> 
         <tr class="row">
             <td>Discount</td>
            <td><asp:Label  CssClass="hlw"  runat="server" Id="four"></asp:Label></td>
        </tr> 
           
             <tr class="row">
             <td>Total</td>
            <td><asp:Label CssClass="hlw"  runat="server" Id="five"></asp:Label></td>
        </tr> 
        </table>
 </div>
</fieldset></div>
      </div>
  </div>
         <asp:Button ID="confirmid" class ="srccls" OnClick="confirm" runat="server" Text="Confirm Booking" />
    
      </div>
    </form>
  
    <asp:Label runat="server" ID="tst"></asp:Label>

</body>
</html>
