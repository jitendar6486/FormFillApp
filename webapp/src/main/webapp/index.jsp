<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<%

Map<String, Map<String,String>> users =
(Map<String, Map<String,String>>)application.getAttribute("users");

if(users == null){
users = new HashMap<>();
application.setAttribute("users", users);
}

String submitted=request.getParameter("submitted");
String login=request.getParameter("login");
String dologin=request.getParameter("dologin");
String logout=request.getParameter("logout");

if(logout!=null){
session.invalidate();
response.sendRedirect("index.jsp");
return;
}

%>

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
width:700px;
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

input,select{
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

table{
width:100%;
border-collapse:collapse;
}

th,td{
border:1px solid #ccc;
padding:8px;
text-align:center;
}

.footer{
text-align:center;
margin-top:20px;
color:#0b5394;
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

if(submitted==null && login==null && dologin==null && session.getAttribute("user")==null){
%>

<div class="container">

<h2>Student Registration</h2>

<form method="post" onsubmit="return validatePassword()">

<label>Full Name</label> <input type="text" name="fullname" required>

<label>Email</label> <input type="email" name="email" required>

<label>Phone</label> <input type="tel" name="phone" required>

<label>Select Course</label>

<select name="course">
<option>DevOps</option>
<option>AWS</option>
<option>Docker</option>
<option>Kubernetes</option>
</select>

<label>Password</label> <input type="password" id="pass" name="password" required>

<label>Confirm Password</label> <input type="password" id="cpass" name="confirm_password" required>

<input type="hidden" name="submitted" value="true">

<br><br>

<button type="submit">Register</button>

</form>

</div>

<%
}else if(submitted!=null){

String name=request.getParameter("fullname");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String course=request.getParameter("course");
String password=request.getParameter("password");

String studentId="DEV"+System.currentTimeMillis();

Map<String,String> data=new HashMap<>();

data.put("name",name);
data.put("email",email);
data.put("phone",phone);
data.put("course",course);
data.put("password",password);
data.put("studentId",studentId);

users.put(email,data);
%>

<div class="container">

<h2 class="success">Registration Successful</h2>

Welcome <b><%= name %></b>

<br><br>

Student ID: <b><%= studentId %></b>

<br><br>

<a href="index.jsp?login=true">
<button>Login Now</button>
</a>

</div>

<%
}else if(login!=null){
%>

<div class="container">

<h2>Student Login</h2>

<form method="post">

<label>Email</label> <input type="email" name="email" required>

<label>Password</label> <input type="password" name="password" required>

<input type="hidden" name="dologin" value="true">

<br><br>

<button>Login</button>

</form>

</div>

<%
}else if(dologin!=null){

String email=request.getParameter("email");
String password=request.getParameter("password");

Map<String,String> user=users.get(email);

if(user!=null && user.get("password").equals(password)){

session.setAttribute("user",user);

%>

<div class="container">

<h2 class="success">Student Dashboard</h2>

Welcome <b><%= user.get("name") %></b>

<br><br>

Student ID: <b><%= user.get("studentId") %></b>

<br>
Email: <%= user.get("email") %>

<br>
Phone: <%= user.get("phone") %>

<br>
Course: <%= user.get("course") %>

<br><br>

<h3>DevOps Skills</h3>

<ul>
<li>Linux Administration</li>
<li>AWS Cloud</li>
<li>Docker Containers</li>
<li>Kubernetes</li>
<li>Jenkins CI/CD</li>
<li>Terraform Infrastructure</li>
</ul>

<br>

<h3>Learning Modules</h3>

<table>

<tr>
<th>Module</th>
<th>Status</th>
</tr>

<tr>
<td>Linux Basics</td>
<td>Completed</td>
</tr>

<tr>
<td>Git & GitHub</td>
<td>Completed</td>
</tr>

<tr>
<td>AWS Fundamentals</td>
<td>In Progress</td>
</tr>

<tr>
<td>Docker</td>
<td>Pending</td>
</tr>

<tr>
<td>Kubernetes</td>
<td>Pending</td>
</tr>

</table>

<br><br>

Login Time: <%= new java.util.Date() %>

<br><br>

<a href="index.jsp?logout=true">
<button>Logout</button>
</a>

</div>

<%
}else{
%>

<div class="container">

<h2 style="color:red">Invalid Login</h2>

<a href="index.jsp?login=true">
<button>Try Again</button>
</a>

</div>

<%
}

}else if(session.getAttribute("user")!=null){

Map<String,String> user=(Map<String,String>)session.getAttribute("user");
%>

<div class="container">

<h2>Student Dashboard</h2>

Welcome <b><%= user.get("name") %></b>

<br><br>

Student ID: <%= user.get("studentId") %>

<br>
Email: <%= user.get("email") %>

<br>
Course: <%= user.get("course") %>

<br><br>

<a href="index.jsp?logout=true">
<button>Logout</button>
</a>

</div>

<%
}
%>

<div class="footer">

DevOps Student Portal | Powered by @DevOps Engineer Jitendar 

</div>

</body>
</html>

