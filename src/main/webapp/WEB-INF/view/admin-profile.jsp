<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/stylee.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title> Admin Profile</title>
</head>
<body>
	<%@ include file="navbaradmin.jsp"%>

	<div class="container-xl px-4 mt-4">
		<hr class="mt-0 mb-4">
		<div class="row">
			<div class="col-xl-4">
				<!-- Profile picture card-->
				<div class="card mb-4 mb-xl-0">
					<div class="card-header">Profile Picture</div>
					<div class="card-body text-center">
						<!-- Profile picture image-->
						<img
							src="https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/bali-nusa-tenggara/bali/bali/Image1.jpg"
							style="height: 200px">
						<!-- Profile picture help block-->
						<div class="font-italic text-muted mb-4">${user.firstName}
							${user.lastName}</div>

						<!-- Profile picture upload button-->

						<a href="../updateprofile/${user.userID}" type="button"
							class="btn btn-primary">Edit profile</a>
					</div>
				</div>
			</div>
			<div class="col-xl-8">
				<!-- Account details card-->
				<div class="card mb-4">
					<div class="card-header">Account Details</div>
					<div class="card-body">
						<form>

							<!-- Form Row-->
							<div class="row gx-3 mb-3">
								<!-- Form Group (first name)-->
								<div class="col-md-6">
									<label class="small mb-1" for="inputFirstName">Email</label> <input
										class="form-control" id="inputFirstName" type="text"
										placeholder="Enter your first name" value="${user.email}">
								</div>
								<!-- Form Group (last name)-->
								<div class="col-md-6">
									<label class="small mb-1" for="inputLastName">Company</label> <input
										class="form-control" id="inputLastName" type="text"
										placeholder="Enter your last name" value="${user.company}">
								</div>





								<!-- Form Group (first name)-->
								<div class="col-md-6">
									<label class="small mb-1" for="inputFirstName">Phone
										number</label> <input class="form-control" id="inputFirstName"
										type="text" placeholder="Enter your first name"
										value="${user.phone}">
								</div>
								<!-- Form Group (last name)-->
								<div class="col-md-6">
									<label class="small mb-1" for="inputLastName">Lives</label> <input
										class="form-control" id="inputLastName" type="text"
										placeholder="Enter your last name"
										value="${user.city}, ${user.country}">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>






	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>