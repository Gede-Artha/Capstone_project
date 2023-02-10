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
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<title>Posting</title>
</head>
<body>
<%@ include file="navbaradmin.jsp"%>
	
	

<div id="contact" class="contact-area section-padding" style=background:#eee;>
	<div class="container">										
		<div class="section-title text-center">
			<h1>Post Jobs to Community Portal</h1>
		</div>					
		<div class="row">
			<div class="col-lg-7">	
				<div class="contact">
					<form:form method="post" class="col-8" modelAttribute="posting" action="dosave">
						<div class="row">
							<div class="form-group col-md-12">
								<form:hidden class="form-label" path="IDpost"/>
							</div>
							<div class="form-group col-md-6">
								<form:input class="form-control"  path="position"  placeholder="Jobs position" required="required" />
							</div>
							<div class="form-group col-md-6">
								<form:input class="form-control"  path="companyName"  placeholder="Company" required="required" />
							</div>
							<div class="form-group col-md-6">
								<form:input type="text"  class="form-control"  path="time"  placeholder="Time" required="required" />
							</div>
							<div class="form-group col-md-6">
								<form:input class="form-control"  path="salary"  placeholder="Salary" required="required" />
							</div>
							<div class="form-group col-md-12">
								<form:input rows="6"  class="form-control"  path="location"  placeholder="Location" required="required" />
							</div>
							<div class="form-group col-md-12" >
								<form:input rows="6"  class="form-control"  style="height:100px" path="postMessage"  placeholder="Jobs Description" required="required" />
							</div>
							<div class="col-md-12 text-center">
								<form:button type="submit"  class="btn btn-contact-bg" value="Save" style="background: #7564e5;">Posting</form:button>
							</div>
						</div>
					</form:form>
				</div>
			</div><!--- END COL --> 
		</div><!--- END ROW -->
	</div><!--- END CONTAINER -->	
</div>
	
	<%@ include file="footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>