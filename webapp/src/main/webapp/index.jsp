<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>

<title>DevOps Student Portal</title>

<style>

body{
font-family:Arial;
background:#eef3ff;
margin:0;
}

.header{
background:#0b5394;
color:white;
text-align:center;
padding:20px;
}

.container{
width:650px;
margin:40px auto;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0px 0px 10px gray;
}

h2{
text-align:center;
color:#0b5394;
}

label{
font-weight:bold;
}

input,select,textarea{
width:100%;
padding:8px;
margin-top:5px;
margin-bottom:14px;
border:1px solid #ccc;
border-radius:5px;
}

button{
background:#0b5394;
color:white;
padding:10px 18px;
border:none;
border-radius:5px;
cursor:pointer;
}

button:hover{
background:#073763;
}

.success{
color:green;
text-align:center;
}

.footer{
text-align:center;
margin-top:30px;
color:#0b5394;
background:#eef3ff;
padding:15px;
font-size:16px;
}

</style>

<script>

function validatePassword(){

var p=document.getElementById("pass").value;
var cp=document.getElementById("cpass").value;

if(p!=cp){
alert("Passwords do not match");
return false;
}

}

</script>

</head>

<body>

<div class="header">
<h1>DevOps Training Portal</h1>
<p>Powered by DevOps Engineer</p>
</div>

<%

String submitted = request.getParameter("submitted");
String login = request.getParameter("login");
String dologin = request.getParameter("dologin");

if(submitted == null && login == null && dologin == null){

%>

<div class="container">

<h2>Student Registration Form</h2>

<form method="post" onsubmit="return validatePassword()">

<label>Full Name</label>
<input type="text" name="fullname" required>

<label>Email</label>
<input type="email" name="email" required>

<label>Phone</label>
<input type="tel" name="phone" required>

<label>Select Course</label>

<select name="course">
<option>DevOps</option>
<option>AWS</option>
<option>Docker</option>
<option>Kubernetes</option>
</select>

<label>Password</label>
<input type="password" id="pass" name="password" required>

<label>Confirm Password</label>
<input type="password" id="cpass" name="confirm_password" required>

<input type="hidden" name="submitted" value="true">

<br><br>

<button type="submit">Register</button>

</form>

</div>

<%

}else if(submitted != null){

String studentId="DEV"+System.currentTimeMillis();

%>

<div class="container">

<h2 class="success">Registration Successful</h2>

<p class="success">
Welcome <b><%= request.getParameter("fullname") %></b>
</p>

Student ID: <b><%= studentId %></b><br><br>

Email: <%= request.getParameter("email") %><br>
Course: <%= request.getParameter("course") %><br>

<br>

<a href="index.jsp?login=true">
<button>Go to Login</button>
</a>

</div>

<%

}else if(login != null){

%>

<div class="container">

<h2>Student Login</h2>

<form method="post">

<label>Email</label>
<input type="email" name="email" required>

<label>Password</label>
<input type="password" name="password" required>

<input type="hidden" name="dologin" value="true">

<br><br>

<button type="submit">Login</button>

</form>

</div>

<%

}else if(dologin != null){

%>

<div class="container">

<h2 class="success">Login Successful</h2>

Welcome back <b><%= request.getParameter("email") %></b>

<br><br>

Login Time:
<%= new java.util.Date() %>

<br><br>

<a href="index.jsp">
<button>Logout</button>
</a>

</div>

<%

}

%>

<div class="footer">

<hr>

<b>DevOps Student Portal</b><br>
Powered by <b>@Jitendar Saw</b><br><br>

📞 Contact: <b>9661007187</b><br>
📧 Email: <b>jitendarsaw12@gmail.com</b>

</div>

</body>
</html>
