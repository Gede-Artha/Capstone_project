<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/stylee.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>Dashboard</title>
</head>
<body>
	<%@ include file="navbaradmin.jsp"%>
	<div class="section-title text-center">
			<h2>Wellcome to Dashboard</h2>
		</div>
	<div class="container mb-4">
		<h5 class="my-3">${user.firstName} ${user.lastName}</h5>
		<button type="button" onclick="window.location.href='adduser';"
			class="btn btn-warning">Add User</button>
			
		<button type="button" onclick="window.location.href='posting-add';"
			class="btn btn-warning">Posting Jobs</button>
		<table class="table">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>Country</th>
				<th>City</th>
				<th>Phone</th>
				<th>Company</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="user" items="${listuser}">
				<tr>
					<td>${user.userID}</td>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
					<td>${user.pass}</td>
					<td>${user.country}</td>
					<td>${user.city}</td>
					<td>${user.phone}</td>
					<td>${user.company}</td>
					<td><button class="nav-button d-flex flex-column flex-lg-row"  class="btn btn-success me-0 me-lg-3 mb-3 mb-lg-0"><a href="edituser/${user.userID}">Edit</a>
					</button></td>
					<td><button class="nav-button d-flex flex-column flex-lg-row"  class="btn btn-success me-0 me-lg-3 mb-3 mb-lg-0"><a href="deleteuser/${user.userID}">Delete</a>
					</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	
	<%@ include file="footer.jsp"%>
	
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>