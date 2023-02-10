<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Reset Password</title>
</head>
<body>

	<%@ include file="navbarstyle.jsp"%>
	<div class="login-form" style="margin-top: 8rem;">
		<form method="post"  id="resetPass" action="savePassword"
			class="d-flex flex-column">
			<h2 class="text-center text-primary">Reset Password</h2>

			<div class="mb-3">
				<span class="err-msg">${error}</span>
			</div>
			<div class="mb-3">
				<span class="fst-italic">${msg}</span>
			</div>
			<div class="mb-3">
	        <input type="hidden" class="form-control" name="token" id="token" value="${token}"/>
	    </div>
			<div class="form-group">
				<input  name="pass1" id="pass1" class="form-control"
					type="text" placeholder="Enter new password" />
			</div>
			<div class="form-group">
				<input  name="pass2" id="pass2" class="form-control"
					type="text" placeholder="Confir password" />
			</div>
			<div class="form-group">
				<button id="save" name="save" type="submit"
					class="btn btn-primary btn-block">Reset password</button>
			</div>
		</form>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="script/resetpw.js"></script>
</body>
</html>