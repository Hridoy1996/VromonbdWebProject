<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testpage.aspx.cs" Inherits="testpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>test</title>
    <link href="testpage.css" rel="stylesheet" />
     <link rel="stylesheet" href="search_item_buss.css" />
    <script src ="https://code.jquery.com/jquery-2.2.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   
     <link href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" />
    
</head>
<body>
 <form id="form1" runat="server">
           <div id="circle"></div>
<div id="circle1"></div>
  <script>
             var myVar;

             function myFunction() {
                 myVar = setTimeout(showPage, 10000);
             }
             function showPage() {
                 document.getElementById("circle").style.display = "none";
                 document.getElementById("circle1").style.display = "none";
                 document.getElementById("myDiv").style.display = "block";
             }
      </script>

         </form>
</body>
</html>
