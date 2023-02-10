<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header class="navbar navbar-expand-lg navbar-dark bg-primary shadow py-3 px-5 mb-4">
		<div class="container-fluid">
				<a class="navbar-brand" class="font-weight-bold" href="#">ABC
					Jobs</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<div style="margin-left: 15px">
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/dashboard">Dashboard</a>
						</li>
					</div>
					<div>
						<li class="nav-item"><a class="nav-link" href="profile">Profile</a>
						</li>
					</div>
					<div>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/joblist">Job List</a>
						</li>
					</div>
					<div>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/applyjoblist">ApplyJob List</a>
						</li>
					</div>
					<div>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/sentbulk">Bulk Email</a>
						</li>
					</div>
					<div class="nav-button d-flex flex-column flex-lg-row" style="margin-left: 550px"><a href="${pageContext.request.contextPath}/logout" class="btn btn-success me-0 me-lg-3 mb-3 mb-lg-0">Logout</a>
					</div>
				</ul>
			</div>
		</div>
	
</header>














