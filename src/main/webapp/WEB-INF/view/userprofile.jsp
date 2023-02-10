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
</head>
<body>
	<div class="root">
      <%@ include file="navbarstyle.jsp" %>

		<div class="row py-5 px-4">
			<div class="col-md-5 mx-auto">
				<!-- Profile widget -->
				<div class="bg-white shadow rounded overflow-hidden">
					<div class="px-4 pt-0 pb-4 cover">
						<div class="media align-items-end profile-head">
							<div class="profile mr-3">
								<img
									src="https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/bali-nusa-tenggara/bali/bali/Image1.jpg"
									alt="..." width="130" class="rounded mb-2 img-thumbnail"><a
									href="updateprofile/${user.userID}"  class="btn btn-primary" style= margin-left:35px;>Edit
									profile</a>
							</div>
							<div class="media-body mb-5 text-white">
								 <h3 class="mt-0 mb-0" class="name">${user.firstName} ${user.lastName}</h3>
								
								<p class="small mb-4">
								 <p class="fas fa-map-marker-alt mr-2" class="address m-0 mb-1">${profile.country}, ${profile.city}</p>
									
								</p>
							</div>
						</div>
					</div>
					<div class="bg-light p-4 d-flex justify-content-end text-center">
						<ul class="list-inline mb-0">
							<li class="list-inline-item">
								<h5 class="font-weight-bold mb-0 d-block">215</h5>
								<small class="text-muted"> <i class="fas fa-image mr-1"></i>Photos
							</small>
							</li>
							<li class="list-inline-item">
								<h5 class="font-weight-bold mb-0 d-block">745</h5>
								<small class="text-muted"> <i class="fas fa-user mr-1"></i>Followers
							</small>
							</li>
							<li class="list-inline-item">
								<h5 class="font-weight-bold mb-0 d-block">340</h5> <small
								class="text-muted"> <i class="fas fa-user mr-1"></i>Following
							</small>
							</li>
						</ul>
					</div>
					<div class="px-4 py-3">
						<h5 class="mb-0">About</h5>
						<div class="p-4 rounded shadow-sm bg-light">
							<p class="font-italic mb-0">Web Developer</p>
							 <p class="font-italic mb-0">${user.country}, ${user.city}</p>
							<p class="font-italic mb-0">Photographer</p>
						</div>
					</div>
					<div class="py-4 px-4">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h5 class="mb-0">Recent photos</h5>
							<a href="#" class="btn btn-link text-muted">Show all</a>
						</div>
						<div class="row">
							<div class="col-lg-6 mb-2 pr-lg-1">
								<img
									src="https://images.unsplash.com/photo-1469594292607-7bd90f8d3ba4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
									alt="" class="img-fluid rounded shadow-sm">
							</div>
							<div class="col-lg-6 mb-2 pl-lg-1">
								<img
									src="https://images.unsplash.com/photo-1493571716545-b559a19edd14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
									alt="" class="img-fluid rounded shadow-sm">
							</div>
							<div class="col-lg-6 pr-lg-1 mb-2">
								<img
									src="https://images.unsplash.com/photo-1453791052107-5c843da62d97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
									alt="" class="img-fluid rounded shadow-sm">
							</div>
							<div class="col-lg-6 pl-lg-1">
								<img
									src="https://images.unsplash.com/photo-1475724017904-b712052c192a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
									alt="" class="img-fluid rounded shadow-sm">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
   	</div>
</body>
</html>