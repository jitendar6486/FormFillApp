<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Student Registration Form</title>
</head>
<body>

<h1>DevOps Student Registration Form</h1>

<!-- Added Name -->
<h3>@jitendar DevOps Engineer</h3>

<p>Please fill in this form to register.</p>
<hr>

<form action="action_page.jsp" method="post">

    <label>Full Name:</label><br>
    <input type="text" name="fullname" required><br><br>

    <label>Email:</label><br>
    <input type="email" name="email" required><br><br>

    <label>Phone Number:</label><br>
    <input type="tel" name="phone" required><br><br>

    <label>Date of Birth:</label><br>
    <input type="date" name="dob"><br><br>

    <label>Gender:</label><br>
    <input type="radio" name="gender" value="Male"> Male<br>
    <input type="radio" name="gender" value="Female"> Female<br>
    <input type="radio" name="gender" value="Other"> Other<br><br>

    <label>Select Course:</label><br>
    <select name="course">
        <option>DevOps</option>
        <option>AWS</option>
        <option>Docker</option>
        <option>Kubernetes</option>
        <option>Linux</option>
    </select><br><br>

    <label>Address:</label><br>
    <textarea name="address" rows="4" cols="30"></textarea><br><br>

    <label>Password:</label><br>
    <input type="password" name="password" required><br><br>

    <label>Confirm Password:</label><br>
    <input type="password" name="confirm_password" required><br><br>

    <input type="checkbox" required> I agree to the Terms and Conditions<br><br>

    <input type="submit" value="Register">
    <input type="reset" value="Reset">

</form>

<hr>

<p>Already have an account? <a href="#">Login here</a></p>

<!-- Added Footer -->
<p><b>@jitendar DevOps Engineer</b></p>

</body>
</html>
