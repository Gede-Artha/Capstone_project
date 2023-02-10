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
</head>
<body>
	<%@ include file="navbarstyle.jsp"%>
	<div class="container bootstrap snippets bootdey"
		style="margin-top: 40px">
		<h1 class="text-primary">Edit Profile</h1>
		<hr>
		<div class="row">
			<!-- left column -->
			<div class="col-md-3">
				<div class="text-center">
					<img src="https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/bali-nusa-tenggara/bali/bali/Image1.jpg"
						class="avatar  img-thumbnail">
					<h6>Upload a different photo...</h6>

					<input type="file" class="form-control">
				</div>
			</div>

			<!-- edit form column -->
			<div class="col-md-9 personal-info">
				<div class="alert alert-info alert-dismissable">
					<a class="panel-close close" data-dismiss="alert">×</a> <i
						class="fa fa-coffee"></i> This is an <strong>.alert</strong>. please fill the profile data corectly if you want to change.
				</div>
				<main>
					<div class="container mt-5 mb-5">
						<form method="post" id="editProfile" action="../update">
							<div class="row justify-content-center">
								<div class="col-lg-5 col-md-8">
									<div class="d-flex flex-column regis-wrapper">
										<div class="heading">
											<h2 class="text-primary" align="center">Change data</h2>
										</div>

									<div class="mb-3">
								<input class="form-control" value="${user.userID}" name="userID"
									id="userID" hidden="hidden" />
							</div>

							<!-- First Name -->
							<div class="form-group">
								<label for="first_name">First Name</label> <input type="text"
									class="form-control" value="${user.firstName}" name="firstName"
									id="firstName" />
							</div>


							<!-- Last Name -->
							<div class="form-group">
								<label for="last_name">Last Name</label> <input type="text"
									class="form-control" name="lastName" id="lastName"
									value="${user.lastName}" />
							</div>


							<!-- Country -->
							<div class="form-group">
								<label for="country">Country</label> <input type="text"
									class="form-control" name="country" id="country"
									value="${user.country}" />
							</div>


							<!-- City -->
							<div class="form-group">
								<label for="city">City</label> <input type="text"
									class="form-control" name="city" id="city" value="${user.city}" />
							</div>

							<!-- City -->
							<div class="form-group">
								<label for="city">Phone Number</label> <input type="text"
									class="form-control" name="phone" id="phone"
									value="${user.phone}" />
							</div>

							<!-- City -->
							<div class="form-group">
								<label for="city">Company</label> <input type="text"
									class="form-control" name="company" id="company"
									value="${user.company}" />
							</div>

							<button type="submit" class="btn btn-primary mt-4" id="update"
								name="update">Edit Profile</button>
						</div>
								</div>
							</div>
						</form>
					</div>
				</main>


			</div>

		</div>

	</div>
	<%@ include file="footer.jsp"%>
	<hr>
</body>
</html>