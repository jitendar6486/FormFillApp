<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>

<title>DevOps Student Registration Portal</title>

<style>

body{
    font-family: Arial;
    background:#eef3ff;
    margin:0;
}

.header{
    background:#0b5394;
    color:white;
    text-align:center;
    padding:15px;
}

.container{
    width:650px;
    margin:30px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 12px gray;
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
    margin-top:6px;
    margin-bottom:14px;
    border:1px solid #ccc;
    border-radius:5px;
}

.skills input{
    width:auto;
}

button{
    background:#0b5394;
    color:white;
    padding:10px 18px;
    border:none;
    border-radius:5px;
}

button:hover{
    background:#073763;
}

.footer{
    text-align:center;
    margin-top:20px;
    color:#0b5394;
}

.success{
    color:green;
    text-align:center;
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
<p>@jitendar DevOps Engineer</p>
</div>

<%
String submitted = request.getParameter("submitted");

if(submitted == null){
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

<label>Date of Birth</label>
<input type="date" name="dob">

<label>Gender</label>

<input type="radio" name="gender" value="Male"> Male
<input type="radio" name="gender" value="Female"> Female
<input type="radio" name="gender" value="Other"> Other

<br><br>

<label>Select Course</label>
<select name="course">
<option>DevOps</option>
<option>AWS</option>
<option>Docker</option>
<option>Kubernetes</option>
<option>Terraform</option>
<option>Linux</option>
<option>CI/CD</option>
</select>

<label>DevOps Skills</label>

<div class="skills">
<input type="checkbox" name="skills" value="Linux"> Linux
<input type="checkbox" name="skills" value="Git"> Git
<input type="checkbox" name="skills" value="Docker"> Docker
<input type="checkbox" name="skills" value="Kubernetes"> Kubernetes
<input type="checkbox" name="skills" value="AWS"> AWS
</div>

<br>

<label>Address</label>
<textarea name="address"></textarea>

<label>Upload Resume</label>
<input type="file" name="resume">

<label>Password</label>
<input type="password" id="pass" name="password" required>

<label>Confirm Password</label>
<input type="password" id="cpass" name="confirm_password" required>

<input type="checkbox" required> I agree to Terms & Conditions

<input type="hidden" name="submitted" value="true">

<br><br>

<button type="submit">Register</button>
<button type="reset">Reset</button>

</form>

</div>

<%
}else{

String studentId="DEV"+System.currentTimeMillis();
%>

<div class="container">

<h2 class="success">Registration Successful</h2>

<hr>

<p class="success">
Thank you <b><%= request.getParameter("fullname") %></b> for registering!
</p>

<hr>

<h3>Student Information</h3>

Student ID: <b><%= studentId %></b><br><br>

Email: <%= request.getParameter("email") %><br>
Phone: <%= request.getParameter("phone") %><br>
Course: <%= request.getParameter("course") %><br>
Gender: <%= request.getParameter("gender") %><br>

<br>

Registration Time:
<%= new java.util.Date() %>

<hr>

<center>
<a href="index.jsp">
<button>Register Another Student</button>
</a>
</center>

</div>

<%
}
%>

<div class="footer">
DevOps Student Portal | Powered by Jitendar
</div>

</body>
</html>
