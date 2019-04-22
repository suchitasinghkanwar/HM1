<%-- 
    Document   : addStudent
    Created on : 28 Mar, 2019, 6:10:43 PM
    Author     : suchita singh kanwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <title>add student</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/complaint.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <style>body {
  font-family: "Lato", sans-serif;
}


h1{
    color: orange;
    text-align: center;
    margin-top: 50px;
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
form 
{
    padding: 13px;
    border: none;
    margin: 10px 0;
    border-bottom: 0px solid #ddd;
    width: 1000px;
    
    box-sizing:border-box;
    border-radius: 20px;
    margin-left: 600px;
}
</style>
  
</head>
<body style="background-image:url('images/img4.jpg'); background-repeat:no-repeat; background-size:1920px 750px;">

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="admindashboard.jsp">DASHBOARD</a>
  <a href="#">ADD STUDENT</a>
  <a href="admincomplaint.jsp">COMPLAINT</a>


<div class="clock" style="text-align:center;margin-top:250px"><canvas id="canvas" width="160" height="160"
style="background-color:rgba(0,0,0,0.3)" >
</canvas></div>
</div>




<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
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
    <li><a href="admindashboard.jsp"><span class="glyphicon glyphicon-home"></span>home</a></li>
      <li><a href="index.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>


<div>
            <% if(session.getAttribute("message")!=null){ %>
            <%=session.getAttribute("message") %>
            <% } %>
            
        </div>
            
<!--            
            <h1>Add Student</h1>
    <div>   
            <form action="AddStudentController" method="post">
                <div> <label>First Name</label>
                    <input type="text" name="first_name" placeholder="Enter First Name">
                 </div>
                     <div> <label>Last Name</label>
                     <input type="text" name="last_name" placeholder="Enter Last Name">
                 </div>
                     <div> <label>User IDno</label>
                      <input type="text" name="uid" placeholder="Enter UID">
                     </div>
                <div><button type="submit" style="font-size:20px" class="btn btn-danger btn-lg">ADD</button></div>
               </form>
    </div>-->

<h1>Add Student</h1>
    <div>   
            <form action="addStudent" method="post" >
                <div> <label>First Name</label>
                    <input type="text" name="first_name" placeholder="Enter First Name">
                 </div>
                     <div> <label>Last Name</label>
                     <input type="text" name="last_name" placeholder="Enter Last Name">
                 </div>
                     <div> <label>User_IDno</label>
                      <input type="text" name="uid" placeholder="Enter UID">
                     </div>
                <div><button type="submit" style="font-size:20px" class="btn btn-danger btn-lg">ADD</button></div>
               </form>
    </div>
            

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

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <div>
            <% if(session.getAttribute("message")!=null){ %>
            <%=session.getAttribute("message") %>
            <% } %>
            
        </div>
    
        <h1>Add Student</h1>
    <div>   
            <form action="addstudent" method="post">
                <div> <label>First Name</label>
                    <input type="text" name="first_name" placeholder="Enter First Name">
                 </div>
                     <div> <label>Last Name</label>
                     <input type="text" name="last_name" placeholder="Enter Last Name">
                 </div>
                     <div> <label>UID</label>
                      <input type="text" name="uid" placeholder="Enter UID">
                     </div>
                <div><button type="submit">ADD</button></div>
               </form>
    </div>

    </body>
</html>-->
