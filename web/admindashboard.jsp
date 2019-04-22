<%-- 
    Document   : dashboard
    Created on : 26 Mar, 2019, 1:50:58 PM
    Author     : suchita singh kanwar
--%>

<%@page import="chitkara.dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>

<html lang="en">
<head>
  <title>admin dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>body {
  font-family: "Lato", sans-serif;
}
div.cont{
    text-align: right;
    margin-top: -90px;
}
div.contact{
    text-align: center;
    margin-top: -90px;
}


ul {list-style-type: none;}
body {font-family: Verdana, sans-serif;}

/* Month header */
.month {
  padding: 20px 35px;
  width: 100%;
  background: orange;
  text-align: center;
}

/* Month list */
.month ul {
  margin: 0;
  padding: 0;
}

.month ul li {
  color: white;
  font-size: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
}

/* Previous button inside month header */
.month .prev {
  float: left;
  padding-top: 10px;
}

/* Next button */
.month .next {
  float: right;
  padding-top: 10px;
}

/* Weekdays (Mon-Sun) */
.weekdays {
  margin: 0;
  padding: 10px 0;
  background-color:#ddd;
}

.weekdays li {
  display: inline-block;
  width: 13.6%;
  color: #666;
  text-align: center;
}

/* Days (1-31) */
.days {
  padding: 10px 0;
  background: #eee;
  margin: 0;
}

.days li {
  list-style-type: none;
  display: inline-block;
  width: 13.6%;
  text-align: center;
  margin-bottom: 5px;
  font-size:12px;
  color: #777;
}

/* Highlight the "current" day */
.days li .active {
  padding: 5px;
  background: #1abc9c;
  color: white !important
}








div.notice{
   border:2px solid black; 
   width:350px;
   height: 400px;
   margin-left: 780px;
   margin-top: 20px;
   overflow: scroll;
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
  color:black;
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
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">DASHBOARD</a>
  <a href="addStudent.jsp">ADD STUDENT</a>
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
  
  
  
  var canvas = document.getElementById("canvas");
  var ctx = canvas.getContext("2d");
  var radius = canvas.height / 2;
  ctx.translate(radius, radius);
  radius = radius * 0.90;
  setInterval(drawClock, 1000);

  function drawClock() {
    drawFace(ctx, radius);
    drawNumbers(ctx, radius);
    drawTime(ctx, radius);
  }

  function drawFace(ctx, radius) {
    var grad;
    ctx.beginPath();
    ctx.arc(0, 0, radius, 0, 2*Math.PI);
    ctx.fillStyle = 'white';
    ctx.fill();
    grad = ctx.createRadialGradient(0,0,radius*0.95, 0,0,radius*1.05);
    grad.addColorStop(0, '#333');
    grad.addColorStop(0.5, 'white');
    grad.addColorStop(1, '#333');
    ctx.strokeStyle = grad;
    ctx.lineWidth = radius*0.1;
    ctx.stroke();
    ctx.beginPath();
    ctx.arc(0, 0, radius*0.1, 0, 2*Math.PI);
    ctx.fillStyle = '#333';
    ctx.fill();
  }

  function drawNumbers(ctx, radius) {
    var ang;
    var num;
    ctx.font = radius*0.15 + "px arial";
    ctx.textBaseline="middle";
    ctx.textAlign="center";
    for(num = 1; num < 13; num++){
      ang = num * Math.PI / 6;
      ctx.rotate(ang);
      ctx.translate(0, -radius*0.85);
      ctx.rotate(-ang);
      ctx.fillText(num.toString(), 0, 0);
      ctx.rotate(ang);
      ctx.translate(0, radius*0.85);
      ctx.rotate(-ang);
    }
  }

  function drawTime(ctx, radius){
      var now = new Date();
      var hour = now.getHours();
      var minute = now.getMinutes();
      var second = now.getSeconds();
      //hour
      hour=hour%12;
      hour=(hour*Math.PI/6)+
      (minute*Math.PI/(6*60))+
      (second*Math.PI/(360*60));
      drawHand(ctx, hour, radius*0.5, radius*0.07);
      //minute
      minute=(minute*Math.PI/30)+(second*Math.PI/(30*60));
      drawHand(ctx, minute, radius*0.8, radius*0.07);
      // second
      second=(second*Math.PI/30);
      drawHand(ctx, second, radius*0.9, radius*0.02);
  }

  function drawHand(ctx, pos, length, width) {
      ctx.beginPath();
      ctx.lineWidth = width;
      ctx.lineCap = "round";
      ctx.moveTo(0,0);
      ctx.rotate(pos);
      ctx.lineTo(0, -length);
      ctx.stroke();
      ctx.rotate(-pos);
  }
}
</script>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">HOSTEL MANAGEMENT SYSTEM</a>
    </div>
    
    <ul class="nav navbar-nav">
    <li><span style="font-size:30px;cursor:pointer" onclick="return openNav()">&#9776;</span></li>
    </ul>
    
     <ul class="nav navbar-nav navbar-right">
 <li><h3>welcome <%=user.getFirst_name()%></h3></li>
    <li><a href="admindashboard.jsp"><span class="glyphicon glyphicon-home"></span>home</a></li>
      <li><a href="index.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
     
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
    <li data-target="#myCarousel" data-slide-to="6"></li>
    <li data-target="#myCarousel" data-slide-to="7"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active">
    
      <img src="img1.jpg" alt="a" height="80%" width="70%" >
     
      <div class="carousel-caption" style="color:black">
          
        <h3>HOSTEL FEELS LIKE HOME</h3>
        <p>NOW BOOK A HOSTEL ROOM FOR YOURSELF</p>
        
      </div>
      </div>
    
    
    <div class="item">
      <img src="img2.jpg" alt="B" height="80%" width="80%">
      <div class="carousel-caption" style="color:black">
        <h3>OUR HOSTEL PROVIDES THE BEST FACILITIES IN THE WORLD</h3>
        <p>STUDENTS ENJOY BEING HERE</p>
        
      </div>
    </div>
    
    <div class="item">
      <img src="img4.jpg" alt="C" height="80%" width="60%">
      <div class="carousel-caption" style="color:black">
        <h3>HOSTEL IS WHERE YOU SPEND BEST TIME OF LIFE</h3>
        <p>ENJOY WITH FRIENDS AND ALSO STUDY AND HAVE A GREAT TIME</p>
        
      </div>
    </div>
    
    <div class="item">
      <img src="images/img5.jpg" alt="D" height="80%" width="60%">
      <div class="carousel-caption" style="color:black">
        <h3>LETS KEEP OUR HOSTELS CLEAN</h3>
        <p>CLEANLINESS MAKES HOSTEL MORE BEAUTIFULL PLACE TO LIVE IN</p>
        
      </div>
    </div>
    
   <div class="item ">
      <img src="images/img6.jpg" alt="E" height="80%" width="70%">
      <div class="carousel-caption" style="color:black">
        <h3>MAINTAIN DISCIPLINE IN HOSTEL</h3>
        <p>FUN IS IMPORTANT BUT SO IS DISCIPLINE ,SO PLEASE MAINTAIN DISCIPLINE</p>
        
      </div>
    </div>

    <div class="item">
      <img src="images/img8.jpg" alt="F" height="80%" width="60%">
      <div class="carousel-caption" style="color:black">
        <h3>MAKE HOSTEL ANTI-RAGGING</h3>
        <p>LET JUNIORS FEEL LIKE HOME AND QUIT RAGGING AND LOVE EVERYONE!</p>
        
      </div>
      
    </div>
    </div>

   
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
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

