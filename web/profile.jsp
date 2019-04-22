<%-- 
    Document   : profile
    Created on : 27 Mar, 2019, 12:33:10 AM
    Author     : suchita singh kanwar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.UserDao"%>
<%@page import="chitkara.dao.ProfileDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>


<html lang="en">
<head>
  <title>profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/complaint.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <style>body {
  font-family: "Lato", sans-serif;
}

table{
    width:80%;
    background-color:rgba(255,255,255,0.4); 
    margin:auto;
}

th{
    padding: 15px 8px;
    text-align: center;
   font-size: 20px;
  }
  td{
      font-size: 20px;
      padding: 8px 8px;
    text-align: center; 
  }

input{
    padding: 8px;
    border: none;
    margin: 8px 0;
    border-bottom: 0px solid #ddd;
    width: 300px;
    background-color:rgba(255,255,255,0.8);
    box-sizing:border-box;
    border-radius: 20px;
    
    
}

/*div.data{
    background-color: rgba(255,255,255,0.5);
    text-align: center;
    font-size: 20px;
    padding: 20px;
}*/

.sidenav {
  height: 100%;
  width: 23%;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:rgba(255,255,255,0.5);
  overflow-x: hidden;
  transition: 0.5s;
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
<jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
<body style="background-image:url('images/bgi.jpg'); background-repeat:no-repeat; background-size:1920px 750px;">

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="dashboard.jsp">DASHBOARD</a>
  <a href="#">PROFILE</a>
  <a href="complaint.jsp">COMPLAINT</a>


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
    
    <li><a href="dashboard.jsp"><span class="glyphicon glyphicon-home"></span>home</a></li>
      <li><a href="index.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>



<h1>Hello ${user.getFirst_name()} </h1>
        <div class="data">
            <table>
                <% ResultSet rs=c1.showProfile(user.getUid());
                if(rs.next()){
                    %>
                    <tr>
                        <th>Name</th>
                        <td><input type="text" value="<%=rs.getString("first_name")+ " "+rs.getString("last_name")%>" readonly>
                        </td>
                     </tr>
                     <tr>
                         <th> UID</th>
                    <td><input type="text" value="<%=rs.getString("uid")%>" readonly></td>
                        </tr>
                        <tr>
                            <th>Father's Name</th>
                            <td><input type="text" value="<%=rs.getString("father_name")%>" readonly></td>
                        <tr>
                            <th>Mobile Number</th>
                            <td><input type="text" value="<%=rs.getString("mobile_no")%>" readonly></td>
                        </tr>
                        <tr>
                            <th>Father's Mob </th>
                            <td><input type="text" value="<%=rs.getString("f_mob_no")%>" readonly></td>
                        </tr>
                      
                <% } %>
            </table>
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
