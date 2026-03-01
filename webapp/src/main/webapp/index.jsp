<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Student Registration Form</title>
</head>

<body bgcolor="#E6F2FF">

<%
String submitted = request.getParameter("submitted");

if(submitted == null){
%>

<!-- ================= FORM SECTION ================= -->

<h1 align="center">
    <font color="blue">DevOps Student Registration Form</font>
</h1>

<h3 align="center">
    <font color="green">@jitendar DevOps Engineer</font>
</h3>

<p align="center">
    <font color="black">Please fill in this form to register.</font>
</p>

<hr>

<form method="post">

    <font color="brown">Full Name:</font><br>
    <input type="text" name="fullname" required><br><br>

    <font color="brown">Email:</font><br>
    <input type="email" name="email" required><br><br>

    <font color="brown">Phone Number:</font><br>
    <input type="tel" name="phone" required><br><br>

    <font color="brown">Date of Birth:</font><br>
    <input type="date" name="dob"><br><br>

    <font color="brown">Gender:</font><br>
    <input type="radio" name="gender" value="Male"> Male<br>
    <input type="radio" name="gender" value="Female"> Female<br>
    <input type="radio" name="gender" value="Other"> Other<br><br>

    <font color="brown">Select Course:</font><br>
    <select name="course">
        <option>DevOps</option>
        <option>AWS</option>
        <option>Docker</option>
        <option>Kubernetes</option>
        <option>Linux</option>
    </select><br><br>

    <font color="brown">Address:</font><br>
    <textarea name="address" rows="4" cols="30"></textarea><br><br>

    <font color="brown">Password:</font><br>
    <input type="password" name="password" required><br><br>

    <font color="brown">Confirm Password:</font><br>
    <input type="password" name="confirm_password" required><br><br>

    <input type="checkbox" required>
    <font color="red">I agree to the Terms and Conditions</font>
    <br><br>

    <!-- Hidden field to detect submission -->
    <input type="hidden" name="submitted" value="true">

    <input type="submit" value="Register">
    <input type="reset" value="Reset">

</form>

<hr>

<p align="center">
    Already have an account? <a href="#">Login here</a>
</p>

<p align="center">
    <font color="green"><b>@jitendar DevOps Engineer</b></font>
</p>

<%
}else{
%>

<!-- ================= THANK YOU SECTION ================= -->

<h1 align="center">
    <font color="blue">Registration Successful</font>
</h1>

<hr>

<h2 align="center">
    <font color="green">Thank You for Registering!</font>
</h2>

<p align="center">
    Dear <b><%= request.getParameter("fullname") %></b>,<br><br>
    Your registration has been submitted successfully.
</p>

<hr>

<h3 align="center">
    <font color="brown">Submitted Details:</font>
</h3>

<p align="center">
    Email: <%= request.getParameter("email") %><br>
    Phone: <%= request.getParameter("phone") %><br>
    Course: <%= request.getParameter("course") %>
</p>

<hr>

<p align="center">
    <a href="index.jsp">Register Another Student</a>
</p>

<p align="center">
    <font color="green"><b>@jitendar DevOps Engineer</b></font>
</p>

<%
}
%>

</body>
</html>
