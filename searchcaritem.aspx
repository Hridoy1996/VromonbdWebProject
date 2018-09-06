<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchcaritem.aspx.cs" Inherits="searchcaritem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="search_item_buss.css" />
        <link rel="stylesheet" href="styles.css"/>
    <link rel="stylesheet" href="repeater.css"/>
    
    <link rel="stylesheet" href="loginclass.css" />
           <link href="testpage.css" rel="stylesheet" />
     <style>
        .rem {
    
    padding-top:119px;
}

    </style>
</head>
<body  onload="myFunction()">
    <form id="form1" runat="server">

                
         <div id='cssmenu'>
           
           
          
            
<ul>
 
    <asp:Image ID="Image2" CssClass="janinakihobe" runat="server" ImageUrl="~/final.png" Height="22%" Width="18%" />
   
   <li class="hre" >   <a  href="home.aspx" id="homeid">Home</a> </li>
   <li  class="hre" >        <a href="buss.aspx" id="busid">Bus</a> </li>
   <li class="hre active">        <a href="micros.aspx"" id="carid">Micro</a></li>
   <li  class="hre">      <a href='#t'>Contact</a></li>
</ul>
                 
    </div>
       
         <div class="rem">
   
              <div class="loginclass">
       
        
        <asp:Button  ID="logoutid" CssClass="log" Text="" OnClick="logout_Click" runat="server"/>
   
 <asp:Button runat="server" CssClass="log" ID="a1" OnClick="userlogin_Click"  Text=""/>
                                
                       
        <asp:Button runat="server" CssClass="log"  id="a2" Text="Agent Login" />
                                
                          

          </div>  
                    <div class="ft">
          <img  id="immg" height="40" src="arrow.png"/>  <div class="b"><h3><asp:Label runat="server" Text="" ID="hid"></asp:Label></h3> </div>

             </div>
             <div id="circle"></div>
<div id="circle1"></div>
          <div style="display:none;" id="myDiv" class="animate-bottom">
        <asp:Repeater ID="rptCustomers" runat="server" OnItemCommand="rpHotelList_ItemCommand">
    <HeaderTemplate>

<table class="container">
   
	
		<tr>
		 <th scope="col" style="width: 50px">
                    Operator Name
                </th>
             <th scope="col" style="width: 30px">
                   Type
                </th>
                <th scope="col" style="width: 40px">
                    AC/Non AC
                </th>
                <th scope="col" style="width: 70px">
                    Plate_no
                </th>
                <th scope="col" style="width: 20px">
                    Seat
                </th>
              <th scope="col" style="width:50px">
                    Cost(Per Day)
                </th>
            <div class="book">
            <th style="width:50px"  >
                   
                </th>
            </div>
		</tr>
        </HeaderTemplate>
 <ItemTemplate>   

    
       <tr>
            <td>
                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("name") %>' />
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("type") %>' />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ac_non_ac") %>' />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("plate_no") %>' />
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("seat") %>' />
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("cost_per_day") %>' />
            </td>
           <td>
              
               <asp:LinkButton ID="Label6"  CommandArgument='<%# Eval("plate_no") %>' class="button" runat="server"><span />Book</asp:LinkButton>
      
               </td>
          </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
               <asp:Label ID="lvl7" runat="server" Text='' />
            
 </div>
         <script>
             var myVar;

             function myFunction() {
                 myVar = setTimeout(showPage, 1000);
             }
             function showPage() {

                 document.getElementById("circle").style.display = "none";
                 document.getElementById("circle1").style.display = "none";
                 document.getElementById("myDiv").style.display = "block";
             }

</script>
             </div>
 
         </form>
</body>
</html>
