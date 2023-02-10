
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	<link href="css/stylee.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navbarlanding.jsp"%>


	<div class="login-form" style="margin-top: 8rem;">
		<form method="post" id="sendMail" action="sendEmail"
			class="d-flex flex-column">
			<h2 class="text-center text-primary">Forget Password</h2>

			<div class="mb-3">
				<span class="err-msg">${error}</span>
			</div>
			<div class="mb-3">
				<span class="fst-italic">${msg}</span>
			</div>

			<div class="form-group">
				<input for="inputEmail" name="email" id="email" class="form-control"
					type="text" placeholder="Enter your email" />
			</div>
			<div class="form-group">
				<button id="send" name="send" type="submit"
					class="btn btn-primary btn-block">sent email</button>
			</div>
		</form>
		
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>
</body>
</html>