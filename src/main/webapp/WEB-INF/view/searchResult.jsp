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
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="css/stylee.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navbarstyle.jsp"%>
	
	<div class="container mb-4" style="height: 500px">
		<p class = "display-5" class="bg-primary">${msgsearchResult}</p>
		<table class="table">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Country</th>
				<th>City</th>
				<th>Company</th>
				<th>Action</th>
			</tr>
			<c:forEach var="user" items="${userlist}">
				<tr>
					<td>${user.firstName} ${user.lastName}</td>
					<td>${user.email}</td>
					<td>${user.country}</td>
					<td>${user.city}</td>
					<td>${user.company}</td>
					<td><a href="seeprofile/${user.userID}">View user</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<%@ include file="footer.jsp"%>
	
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>