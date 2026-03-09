<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>DevOps Student Registration</title>

<style>

body{
    font-family: Arial;
    background:#eef5ff;
}

.container{
    width:600px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h1{
    text-align:center;
    color:#0b5394;
}

h3{
    text-align:center;
    color:green;
}

label{
    font-weight:bold;
}

input,select,textarea{
    width:100%;
    padding:8px;
    margin-top:5px;
    margin-bottom:15px;
    border:1px solid #ccc;
    border-radius:5px;
}

button{
    background:#0b5394;
    color:white;
    padding:10px 20px;
    border:none;
    border-radius:5px;
}

button:hover{
    background:#073763;
}

.footer{
    text-align:center;
    margin-top:20px;
    color:green;
}

</style>
</head>

<body>

<%
String submitted = request.getParameter("submitted");

if(submitted == null){
%>

<div class="container">

<h1>DevOps Student Registration</h1>
<h3>@jitendar DevOps Engineer</h3>

<form method="post">

<label>Full Name</label>
<input type="text" name="fullname" required>

<label>Email</label>
<input type="email" name="email" required>

<label>Phone Number</label>
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
<option>Linux</option>
<option>Terraform</option>
<option>CI/CD</option>
</select>

<label>Skills</label>

<input type="checkbox" name="skills" value="Linux"> Linux
<input type="checkbox" name="skills" value="Git"> Git
<input type="checkbox" name="skills" value="Docker"> Docker
<input type="checkbox" name="skills" value="Kubernetes"> Kubernetes
<input type="checkbox" name="skills" value="AWS"> AWS

<br><br>

<label>Address</label>
<textarea name="address"></textarea>

<label>Upload Resume</label>
<input type="file" name="resume">

<label>Password</label>
<input type="password" name="password" required>

<label>Confirm Password</label>
<input type="password" name="confirm_password" required>

<input type="checkbox" required> I agree to Terms and Conditions

<input type="hidden" name="submitted" value="true">

<br><br>

<button type="submit">Register</button>
<button type="reset">Reset</button>

</form>

<div class="footer">
DevOps Training Portal | © 2026
</div>

</div>

<%
}else{
%>

<div class="container">

<h1>Registration Successful</h1>

<h3>Thank You for Registering!</h3>

<p>
Dear <b><%= request.getParameter("fullname") %></b>,
your registration has been successfully submitted.
</p>

<hr>

<h3>Submitted Details</h3>

<p>
Email: <%= request.getParameter("email") %><br>
Phone: <%= request.getParameter("phone") %><br>
Course: <%= request.getParameter("course") %><br>
</p>

<br>

<a href="index.jsp">
<button>Register Another Student</button>
</a>

<div class="footer">
@jitendar DevOps Engineer
</div>

</div>

<%
}
%>

</body>
</html>
