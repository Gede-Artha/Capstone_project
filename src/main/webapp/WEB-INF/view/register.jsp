<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link href="css/stylee.css" rel="stylesheet">
<title>Registration</title>
</head>
<body>
	<%@ include file="navbarlanding.jsp"%>
	<div class="container mt-5 mb-5">
		<form:form method="post" class="col-8" id="regForm"
			modelAttribute="user" action="registerProcess"  style="margin-left: 370px;" align="center">

			<div  class="mx-auto" style="width:1500px">
				<div class="col-lg-3 col-md-5">
					<div class="d-flex flex-column regis-wrapper">
						<div align="center" class="heading">
							<h2 class="text-primary">Sign Up</h2>
						</div>
						<br>
						<div class="mb-3">
							<form:input type="text" class="form-label" path="firstName"
								name="firstName" id="firstname" placeholder="Fisrt name" />
						</div>
						<div class="mb-3">

							<form:input type="text" class="form-label" path="lastName"
								name="lastname" id="lastName" placeholder="last name" />
						</div>
						<div class="mb-3">

							<form:input type="text" class="form-label" path="email"
								name="email" id="email" placeholder="Email" />
							<span class="err-msg">${dupe}</span>
						</div>
						<div class="mb-3">
							<form:input type="password" class="form-label" path="pass"
								name="pass" id="password" placeholder="Password" />
						</div>
						<div class="mb-3">

							<input type="password" class="form-label" name="pass2"
								id="password2" placeholder="Confirm password" />
						</div>
						<div class="mb-3">

							<form:input type="text" class="form-label" path="country"
								name="country" id="country" placeholder="Country" />
						</div>
						<div class="mb-3">

							<form:input type="text" class="form-label" path="city"
								name="city" id="city" placeholder="City" />
						</div>
						<div class="mb-3">

							<form:input type="text" class="form-label" path="phone"
								name="phone" id="phone" placeholder="Phone number" />
						</div>
						<div class="mb-3">

							<form:input type="text" class="form-label" path="company"
								name="company" id="company" placeholder="Company" />
						</div>
						<div class="mb-3">
							<form:input type="text" class="form-label" path="role"
								hidden="hidden" value="1" />
						</div>
						<form:button type="submit" class="btn btn-primary" id="register"
							name="register">Register</form:button>

						<p>
							Already have an account? <a style="color: blue;" href="login">Sign
								In</a>
						</p>
					</div>
				</div>
			</div>
	
	</form:form>
		</div>
	<%@ include file="footer.jsp"%>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
	<script type="text/javascript" src="script/registration.js"></script>
</body>
</html>