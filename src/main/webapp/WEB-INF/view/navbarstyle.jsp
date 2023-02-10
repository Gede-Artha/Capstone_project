<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<header>
	<nav
		class="navbar navbar-expand-lg navbar-dark bg-primary shadow py-3 px-5 mb-4">
		<div class="container-fluid">
			<a class="navbar-brand" class="font-weight-bold" href="#">ABC
				Jobs</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<div style="margin-left: 15px">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/homepage">Homepage</a></li>
					</div>
					<div>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/profilee">Profile</a></li>
					</div>
					<div>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/jobpost">Jobs</a>
						</li>
					</div>
					<div>
						<section id="search-users" style="margin-left: 10px">
							<div class="container d-flex flex-column">
								<form action="search" method="get"
									class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex" style="width:400px">
									<input type="text" class="form-control me-2"
										placeholder="Search..." aria-label="Search" name="searchValue"
										id="searchValue">
									<button class="btn btn-outline-light h-6" type="submit" style="margin-left:5px">Search</button>
								</form>
							</div>
						</section>
					</div>
					<div class="nav-button d-flex flex-column flex-lg-row"
						style="margin-left: 370px">
						<a href="logout" class="btn btn-success me-0 me-lg-3 mb-3 mb-lg-0">Logout</a>
					</div>
				</ul>
			</div>
		</div>
	</nav>
</header>














