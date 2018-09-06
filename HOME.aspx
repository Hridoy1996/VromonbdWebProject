<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="HOME" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <title>vromonbd</title>
    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <link href="Styles/jquery-ui-1.10.3.custom.min.css" rel="stylesheet" type="text/css" />
       <link rel="stylesheet" href="styles.css"/>
        <link rel="stylesheet" href="home.css"/>

    <script src="code.jquery.com/jquery-min.js"></script>
    <link rel="shortcut icon" href="<%=ResolveUrl("~/faviconf.ico")%>"/>

         <link rel ="stylesheet"  href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
         <script src="imagesliderJS.js"></script>
         <script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
         <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" ></script>
         <script src ="https://code.jquery.com/jquery-2.2.4.js"></script>
         <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
         <link href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" />
<style>
          .autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}
.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff; 
  border-bottom: 1px solid #d4d4d4; 
}
.autocomplete-items div:hover {
  background-color: #e9e9e9; 
}
.autocomplete-active {
    background-color: DodgerBlue !important; 
  color: #ffffff; 
}
.ui-datepicker-calendar .ui-state-active {
            background: purple;
        }
.ui-datepicker {
  -webkit-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);
  -moz-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);
  box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);
}
.ui-datepicker table {
  color:blue;
}
.ui-datepicker-header {
  color: red;
 
}
.ui-datepicker-calendar .ui-state-hover {
  background: purple;

}
</style>    
    <script type="text/javascript">
           $(function () {
               $('input:text:first').focus();
               var $inp = $('input:text');
               $inp.bind('keydown', function (e) {
                   //var key = (e.keyCode ? e.keyCode : e.charCode);
                   var key = e.which;
                   if (key == 13) {
                       e.preventDefault();
                       var nxtIdx = $inp.index(this) + 1;
                       $(":input:text:eq(" + nxtIdx + ")").focus();
                   }
               });
           });
   </script>
    <script type="text/javascript">
        $(function () {
            function split(val) {
                return val.split(/,s*/);
            }
            function extractLast(term) {
                return split(term).pop();

            }

            $("#<%=txtfromcityname.ClientID%>").autocomplete({
                    source: function (request, response) {
                        var param = { username: $('#txtfromcityname').val() };
                        $.ajax({
                            url: "HOME.aspx/getUserNames",
                            data: JSON.stringify(param),
                            type: "POST",
                            dataType: "json",
                            contentType: "application/json;charset=utf-8",
                            dataFilter: function (data) { return data; },
                            success: function (data) {
                                response($.map(data.d, function (item) {
                                    return {
                                        value: item
                                    }
                                }))
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                alert(errorThrown);
                            }
                        });
                    },
                    minLength: 1
                });
            });
            $(function () {
                $('#txttocityname').autocomplete({
                    source: function (request, response) {
                        var param = { username: $('#txttocityname').val() };
                        $.ajax({
                            url: "HOME.aspx/getUserNames",
                            data: JSON.stringify(param),
                            type: "POST",
                            dataType: "json",
                            contentType: "application/json;charset=utf-8",
                            dataFilter: function (data) { return data; },
                            success: function (data) {
                                response($.map(data.d, function (item) {
                                    return {
                                        value: item
                                    }
                                }))
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                alert(errorThrown);
                            }
                        });
                    },
                    minLength: 1
                });
            });
            </script>
    <script>
          $(document).ready(function () {
              var minDate = new Date();
              $("#depart").datepicker({
                  showAnim: 'drop',
                  numberOfMonth: 1,
                  minDate: minDate,
                  DateFormet: 'dd/mm/yyyy',
                  onClose: function (selectedDate) {
                      $('#returndate').datepicker("option", "minDate", selectedDate);
                  }
              });
              $("#returndate").datepicker({
                  showAnim: 'drop',
                  numberOfMonth: 1,
                  minDate: minDate,
                  DateFormet: 'dd/mm/yyyy',
                  onClose: function (selectedDate1) {
                      $('#returndate').datepicker("option", "minDate", selectedDate1);
                  }
              });
          }) </script>
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
    
    padding-top:119px;
}

    </style>
    
 </head>
<body>
      
    <form  autocomplete="off"  id ="form1" runat="server">

      
            
         <div id='cssmenu'>
           
           
          
            
<ul>
 
    <asp:Image ID="Image2" CssClass="janinakihobe" runat="server" ImageUrl="~/final.png" Height="22%" Width="18%" />
   
   <li class="hre active" >   <a  href="home.aspx" id="homeid">Home</a> </li>
   <li  class="hre" >        <a href="buss.aspx" id="busid">Bus</a> </li>
   <li class="hre">        <a href="micros.aspx" id="carid">Micro</a></li>
   <li  class="hre">      <a href="Contact.aspx">Contact</a></li>
</ul>
                 
    </div>
            <div class="rem">
   
    <div class="loginclass">
       
        
        <asp:Button  ID="logoutid" CssClass="log" Text="" OnClick="logout_Click" runat="server"/>
   
 <asp:Button runat="server" CssClass="log" ID="a1" OnClick="userlogin_Click"  Text=""/>
                                
                       
        <asp:Button runat="server" CssClass="log"  id="a2" Text="Agent Login" />
                                
                          

          </div>                         

 
        <br />  
  
     <div class="slider_form">
        <div class="container">
   
              <div class="row">
                 <div class="col-25">
                     <label for="from">From</label>
                  </div>
                  <div class="col-75">
                      
                       <div class="autocomplete" ">

                      <asp:TextBox ID="txtfromcityname" runat="server"  keydown ="" placeholder="Enter City" ></asp:TextBox>
                  </div>
                        </div>
            </div>
            <div class="row">
                 <div class="col-25">
                     <label for="to">To</label>
                  </div>
                  <div class="col-75">
                      <asp:TextBox ID="txttocityname" runat="server"  placeholder="Enter City" ></asp:TextBox>
                  </div>
            </div>
                <div class="row">
                 <div class="col-25">
                     <label for="doj">Date of Journey</label>
                  </div>
                  <div class="col-75">
                     <asp:TextBox runat="server" type="text" Id="depart" placeholder="Depart date" />
                  </div>
            </div>
                
            <div class="row">
                 <div class="col-25">
                     <label for="eoj">End of Journey</label>
                  </div>
                  <div class="col-75">
                 
                       <asp:TextBox runat="server" type="text" ID="returndate"   placeholder="Return date" />
                  </div>
            </div>
   
            <div class="row">
               
                    <span >
                        <br />
                        <br />
                         <br />
                        <br />
                 <asp:Button ID="searchhotelid" class ="srccls" OnClick="search_buss" width="100%" runat="server" Text="Search Buss" />
             </span>

             </div>
             <div class="row">
               
                    <span >
                      <br/>
                 <asp:Button ID="searcharid" class ="srccls" width="100%" OnClick="search_car" runat="server" Text="Search micro/car" />
             </span>

             </div>

      </div>
  
  <div class="slider" id="main-slider">
	<div class="slider-wrapper">
	
		<img src="img2.jpg" alt="Second" class="slide" />
		<img src="img1.jpg" alt="Third" class="slide" />
	</div>
</div>
       
         </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
        
                      </form>  
          
    
</body>
</html>