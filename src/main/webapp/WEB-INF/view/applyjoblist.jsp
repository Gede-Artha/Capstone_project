<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/styleeposting.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<title>User Apply</title>
</head>
<body>
	<%@ include file="navbaradmin.jsp"%>
	
	<div class="section-title text-center">
			<h2>Job List</h2>
		</div>
	<div class="container mb-4">
		
		<button type="button" onclick="window.location.href='adduser';"
			class="btn btn-warning">Add User</button>
			
		<button type="button" onclick="window.location.href='posting-add';"
			class="btn btn-warning">Posting Jobs</button>
			<table class="table">
			<tr>
				
				<th>Username</th>
				<th>Apply for Company</th>
				<th>Apply Positition</th>
				
				<th>Action</th>
			</tr>
			<c:forEach var="user_apply" items="${listApplyJob}">
				<tr>
					
					<td>${user_apply.userName_apply}</td>
					<td>${user_apply.apply_company}</td>
					<td>${user_apply.apply_positition}</td>
					<td><button class="nav-button d-flex flex-column flex-lg-row"  class="btn btn-success me-0 me-lg-3 mb-3 mb-lg-0"><a href="deleted?id=${user_apply.id_apply}">Delete</a>
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