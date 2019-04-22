<%-- 
    Document   : index
    Created on : 2 Apr, 2019, 2:51:35 PM
    Author     : Suchita singh kanwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>LOGIN FORM</title>
<!--  <link rel="stylesheet" type="text/css" href="css/style.css">
-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>

body
{
	margin:0;
	padding:10px;
	background-color:#808080;
	font-size:25px;
	font-family:sans-serif;
	height:70px;
	
}
body h1
{
	margin:40px;
	padding:3px;
	text-align:center;
	font-size:70px;
	color:#8a0000;
}

.login
{
	border:3px solid white;
	padding:3px;
	text-align:center;
	border-radius:100px;
	margin-top:70px;
	margin-left:450px;
	width:40%;
	height:750%;
	color:#8a0000;
	background-color:white;
	font-size:18px;
	
}


button:hover {
  opacity: 1.0;
}
input
{
	width:30%;
	padding:3px;
	border:1px solid;
	border-radius:4px;
	box-sizing:border-box;
	margin-top:7px;
	margin-bottom:7px;
}
 input[type=submit]
 {
 background-color:#ffffff;
 padding:3px;
 }
 span.psw {
  float:center;
  padding-top: 20px;
}
 
 

</style>

</head>
<body style="background-image:url('bgd.jpg'); background-repeat:no-repeat; background-size:1920px 750px;">
<h1><b>LOG IN</b></h1>
<div class="login">
    <% if(session.getAttribute("message")!=null){ %>
    <div class="alert alert-info">
  <strong>Info!</strong> <%=session.getAttribute("message")%>
   </div>
    <%} session.removeAttribute("message");
        session.invalidate();
    %>

<form name="myForm" method="post" id="login" action="Login" onsubmit="return myValidation()">

<br><br><label for="uname"><img src="user.png" width="15%" height="15%" ><b> User ID</b></label>
<input type="text" placeholder="Enter vehicleno." name="uid" ><br><br>

    <label for="psw"><img src="pswd.jpg" width="15%" height="15%" ><b> Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" ><br><br>
    
   
    
    <button type="submit" style="font-size:20px" class="btn btn-danger btn-sm"><img src="images\login.jpg" width="15%" height="15%" >   Login </button><br>
    
    
    </form>
    </div>
    
  <script>
  
  function myValidation()
  {
	  var user=document.forms["myForm"]["uid"].value;
	  var psw=document.forms["myForm"]["password"].value;
	  var flag=true;
	  
	  if(user=="")
		  {
		    alert("vehicleno. cannot be empty!");
		    flag=false;
		  }
	  if(psw=="")
		  {
		    alert("password cannot be empty!");
		    flag=false;
		  }
	  return flag;
  }
  </script>
  
  </body>
  </html>