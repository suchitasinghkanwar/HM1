<%-- 
    Document   : signup
    Created on : 10 Apr, 2019, 2:31:21 PM
    Author     : Suchita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>SIGNUP FORM</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<style>
.signup
{
	
	padding:3px;
	text-align:center;
	border-radius:100px;
	margin-top:70px;
	margin-left:450px;
	width:40%;
	height:750%;
	color:#8a0000;
	background-color:rgba(255,255,255,0.5);
	font-size:15px;
	
}
body h1
{
	margin:40px;
	padding:3px;
	text-align:center;
	font-size:70px;
	color:white;
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
<body style="background-image:url('images/rtosignup.jpg'); background-repeat:no-repeat; background-size:1920px 750px;">
<h1><abbr title="create your account to login into the site">SIGN UP</abbr></h1>
<div class="signup">
<form method="post" id="signup" action="">
<h2>sign up here!</h2>
<label> OWNER NAME     :</label>
<input type="text" name="fname" placeholder="Enter OWNER Name" required>
<br>
<label> VEHICLE NO.      : </label>
<input type="text" name="vno" placeholder="Enter vehicle number" required>
<br>
<label> VEHICLE TYPE  : </label>
<input type="text" name="vtype" placeholder="Enter vehicle type" required>
<br>
<label> SEATS  : </label>
<input type="number" name="seat" placeholder="Enter no. of seats" required>
<br>
<label> YEAR  : </label>
<input  name="year" placeholder="Enter year of purchasing" required>
<br>
<label> PASSWORD       :</label>
<input type="password" name="password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="must contain atleast one number and one uppercase and one lowecase letter,and atlest eight or more character!" required>
<br>
<label> RE-ENTER PASSWORD: </label>
<input type="password" name="repassword" placeholder="Re Type Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="must contain atleast one number and one uppercase and one lowecase letter,and atlest eight or more character!" required>
<br>
<button type="submit" style="font-size:20px" class="btn btn-danger btn-sm"><img src="images\login.jpg" width="15%" height="15%" >signup </button><br>
</form>
</div>
<script>

</script>
</body>
</html>
