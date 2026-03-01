<form action="action_page.php">
  <div class="container">

    <h1>Welcome!! Jitendar DevOps Student Registration</h1>
    <p>Please fill in this form to register</p>
    <hr>

    <!-- Full Name -->
    <label><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="fullname" required>

    <!-- Email -->
    <label><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" required>

    <!-- Phone -->
    <label><b>Phone Number</b></label>
    <input type="tel" placeholder="Enter Phone Number" name="phone" required>

    <!-- Course -->
    <label><b>Course</b></label>
    <select name="course">
      <option>DevOps</option>
      <option>AWS</option>
      <option>Kubernetes</option>
      <option>Docker</option>
      <option>Linux</option>
    </select>

    <!-- Gender -->
    <label><b>Gender</b></label><br>
    <input type="radio" name="gender"> Male
    <input type="radio" name="gender"> Female
    <input type="radio" name="gender"> Other
    <br><br>

    <!-- Password -->
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <!-- Confirm Password -->
    <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

    <!-- Address -->
    <label><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="address">

    <!-- Terms -->
    <p>By creating an account you agree to our Terms & Privacy.</p>

    <button type="submit" class="registerbtn">Register</button>

  </div>

  <div class="container" style="text-align:center; margin-top:10px;">
    <p>Already have an account? Sign in</p>
  </div>
</form>

</body>
</html>
