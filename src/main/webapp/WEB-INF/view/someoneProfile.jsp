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
	<%@ include file="navbarstyle.jsp"%>
		
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
									  class="btn btn-primary" style= margin-left:35px;>Add Friend
									</a>
									<h5 class="my-3">${user.firstName} ${user.lastName}</h5>
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
							 <p class="font-italic mb-0">${user.email}</p>
							  <p class="font-italic mb-0">${user.phone}</p>
							<p class="font-italic mb-0">Photographer</p>
						</div>
					</div>
					<div class="py-4 px-4">
						</div>
					</div>
				</div>
			</div>
			
			
<%-- 	</c:forEach> --%>
	
	<%@ include file="footer.jsp"%>
	
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>