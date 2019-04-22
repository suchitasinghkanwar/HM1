<%-- 
    Document   : complaint
    Created on : 2 Apr, 2019, 8:31:34 PM
    Author     : Suchita singh kanwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>complaint</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/complaint.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <style>body {
  font-family: "Lato", sans-serif;
}

.container
 {
	padding:3px;
	text-align:center;
	border-radius:100px;
	margin-top:130px;
	width:60%;
	height:750%;
    color:black;
    
}



input[type=text], select, textarea {
  width: 30%; 
  padding: 12px;   
  border: 2px solid #ccc; 
  border-radius: 4px; 
  box-sizing: border-box; 
  margin-top: 6px; 
  margin-bottom:6px; 
  margin-right:2px;
  margin-left:2px;
  resize: vertical;
}
 textarea
 {
 width:50%;
 }


input[type=submit] {
  color:white;
  padding: 12px 20px;
  border-radius: 4px;
  cursor: pointer;
}




.sidenav {
  height: 100%;
  width: 23%;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:rgba(255,255,255,0.5);
  overflow-x: hidden;
  transition: 0.2s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color:orange;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: black;
}

.sidenav .closebtn {
 float:right;
 font-size:40px;
 line-height:1;
 color:orange;
 text-shadow:0 1px 0#fff;
 filter:alpha(opacity=20);
 
  
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
  .navbar-default {
    background-color:orange;
}
</style>
  
</head>
<body style="background-image:url('images/img4.jpg'); background-repeat:no-repeat; background-size:1920px 750px;">

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="dashboard.jsp">DASHBOARD</a>
  <a href="profile.jsp">PROFILE</a>
  <a href="#">COMPLAINT</a>


<div class="clock" style="text-align:center;margin-top:250px"><canvas id="canvas" width="160" height="160"
style="background-color:rgba(0,0,0,0.3)" >
</canvas></div>
</div>

<div class="container">
  <form name="complaint" method="post" action="complaint" onsubmit="return myValidation()">
  <label>FIRST NAME:</label>
    <input type="text" id="fname" name="first_name" placeholder="Your name.."><br>
    <label>LAST NAME:</label>
    <input type="text" id="lname" name="last_name" placeholder="Your last name.."><br>
 <!--  <label>COMPLAINT:</label>
    <select id="complaint" name="complaint">
      <option value="maintenance">Maintanence</option>
      <option value="discipline">Discipline</option>
      <option value="water problem">Water problem</option>
      <option value="electricity problem">Electricity problem</option>
      <option value="other problem">Other problem</option>
    </select><br>-->
    <br>
    
    <textarea id="subject" name="complaint" placeholder="Write your complaint here.." style="height:200px" style="width:200px"></textarea><br>
    
    <button type="submit" style="font-size:20px" class="btn btn-danger btn-lg">SUBMIT</button><br>

  </form>
</div>


<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}


function myValidation()
{
	  var fname=document.forms["complaint"]["fname"].value;
	  var lname=document.forms["complaint"]["lname"].value;
	  var complaint=document.forms["complaint"]["complaint"].value;
	  var flag=true;
	  
	  if(fname=="")
		  {
		    alert("first name cannot be empty!");
		    flag=false;
		  }
	  if(complaint=="")
		  {
		    alert("select the type of complaint!");
		    flag=false;
		  }
	  if(flag==true)
		  {
		  alert("your complaint has been submitted!")
		  }
	  return flag;
}
</script>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">HOSTEL MANAGEMENT SYSTEM</a>
    </div>
    
    <ul class="nav navbar-nav">
    <li><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span></li>
    </ul>
    
     <ul class="nav navbar-nav navbar-right">
    <li><a href="dashboard.jsp"><span class="glyphicon glyphicon-home"></span>home</a></li>
      <li><a href="index.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>


<nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-footer">
      </div>
    <ul class="nav navbar-nav navbar-right">
    </ul>
  </div>
   
</nav>

</body>
</html>


