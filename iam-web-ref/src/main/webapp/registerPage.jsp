<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Register</title>

<script src="js/bootstrap.min.js"></script>
<script src="js/loginandregister.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<link href="css/register.css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<a href="<%=request.getContextPath()%>/loginPage.jsp">&lt;&lt; Back </a>
		<form class="form-signin" name="loginForm" method="post"
			action="<%=request.getContextPath()%>/register">
			<h2 class="form-signin-heading">Sign up</h2>
			
			<label for="inputUID" class="sr-only">ID Number</label> 
			<input id="uid" class="form-control" placeholder="Your UID" name="UID" required autofocus>
			
			<label for="inputName" class="sr-only">Name</label> 
			<input id="name" class="form-control" placeholder="Name" name="name" required>
			
			<label for="inputEmail" class="sr-only">Email Address</label> 
			<input type="email" id="inputEmail" class="form-control" placeholder="Email Address" name="email" required>
			
			<label for="inputPassword" class="sr-only">Password</label> 
			<input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pwd" required> 
			
			<label for="rinputPassword" class="sr-only">Confirm Password</label> 
			<input type="password" id="rinputPassword" class="form-control"	placeholder="Confirm Password" name="rpwd" required>
			
			<label for="lbcountry" class="sr-only">Country</label> 
			<input id="Country" class="form-control" placeholder="Country" name="country" required>
			
			<label for="lbcity" class="sr-only">City</label>
			<input id="City" class="form-control" placeholder="City" name="city" required>
			
			<label for="lbstreet" class="sr-only">Street</label> 
			<input id="Street" class="form-control" placeholder="Street" name="street" required>
			
			<label for="Zipcode" class="sr-only">PosterCode</label> 
			<input id="Zipcode" class="form-control" placeholder="PosterCode" name="PosterCode" required>
			
			<p></p>
			<%if(request.getAttribute("error")==null){%>
			<h2></h2>
			<%}
        else
        {%>
			<h4><%=request.getAttribute("error")%></h4>
			<%} %>
			<%if(request.getAttribute("regmsg")==null){%>
			<h2></h2>
			<%}
        else
        {%>
			<h3><%=request.getAttribute("regmsg")%></h3>
			<%request.getRequestDispatcher("authenticate").forward(request, response);%>
			<%} %>
			<input class="btn btn-lg btn-primary" type="submit"
				onclick="return RegistrationValidation(this)" value="Register then Login">
		</form>
	</div>
</body>
</html>
