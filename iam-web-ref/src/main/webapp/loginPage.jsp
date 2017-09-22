<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>loginPage</title>
<script src="js/bootstrap.min.js"></script>
<script src="js/loginandregister.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">


<!-- <form action="/action_page.php">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">Login</button>
    <input type="checkbox" checked="checked"> Remember me
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form> -->

</head>
<body>
<div class="imgcontainer">
	<div align="center">
    	<img src="C:\Users\MRGoO\git\IAMCORE_AR_ADVJAVA\iam-web-ref\src\main\webapp\pic\user.png" alt="user" >
    </div>
  </div>
	<div class="container">
		<form class="form-signin" name="loginForm" method="post"
			action="<%=request.getContextPath()%>/authenticate">
			<h2 class="form-signin-heading">Sign In</h2>
			<label for="inputEmail" class="sr-only">Email Address</label> <input
				type="email" id="inputEmail" class="form-control"
				placeholder="Email address" name="email" required autofocus>
			<label for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="inputPassword" class="form-control"
				placeholder="Password" name="pwd" required>
			<p></p>
			<%if(session.getAttribute("msg")!=null) {%>
			<h3><%=session.getAttribute("msg")%></h3>
			<%}
            else
            {%>
			<h3></h3>
			<%} %>
			<p></p>
			<input class="btn btn-lg btn-primary btn-block" type="submit"
				onclick="return SigninValidation(this)" value="Sign in"> <a
				class="btn btn-lg btn-primary btn-block" href="registerPage.jsp">Register</a>
		</form>

	</div>
</body>
</html>
