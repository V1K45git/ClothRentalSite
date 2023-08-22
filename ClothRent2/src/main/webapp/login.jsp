
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login Page</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter email" required>
     <input type="password" name="password" placeholder="Enter password" required>
     <input type="submit" value="login">
     </form>
      <h3><a href="signup.jsp">Create an Account</a></h3>
      </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1>Incorrect Username or Password</h1>
  <%} %>
  <% if("invalid".equals(msg))
  {%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h1 style="font-family: Arial, sans-serif; color: #FF9900; font-size: 50px; font-weight: bold; text-shadow: 2px 2px 4px #000000;">Clothing-<span style="color: #000000">-Rentals</span></h1>
        <img src="image/pngegg.png" alt="cloth image" width=400px height=250px>
  </div>
</div>

</body>
</html>