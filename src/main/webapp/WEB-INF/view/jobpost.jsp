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
<title>Jobpost</title>
</head>
<body>
	<%@ include file="navbarstyle.jsp"%>
	
	<c:forEach var="posting" items="${listPosting}">
	<div class="container bootstrap snippets bootdey">
    <div class="col-sm-8">
        <div class="panel panel-white post panel-shadow">
            <div class="post-heading">
                <div class="pull-left image">
                    <img src="https://marcopolis.net/images/stories/indonesia-report/2016/companies/Telkom_Indonesia.jpg" class="img-circle avatar" alt="user profile image">
                </div>
                <div class="pull-left meta">
                    <div class="title h5">
                        <a href="#"><b>Admin</b></a>
                        post new jobs.
                    </div>
                    <h6 class="text-muted time">${posting.time}</h6>
                </div>
            </div> 
            <div class="post-description"> 
                <h4 class="text-primary"><b>${posting.position}</b></h4>
               	<p class="text-muted time"><b>${posting.location}</b></p>
                <div class="stats">
                    <a href="#" class="btn btn-default stat-item">
                        <i class="fa fa-thumbs-up icon"></i>
                    </a>
                    <a href="#" class="btn btn-default stat-item">
                        <i class="fa fa-share icon"></i>
                    </a>
                   
                    <button type="submit" value="Save" class="btn btn-sm btn-rounded btn-info" style="margin-left: 420px" ><a  href="seeposting/${posting.IDpost}" class="btn btn-sm btn-rounded btn-info" >Read post</a>
                         
                        </button>
                        
                 
                     
                </div>
            </div>
        </div>
    </div>
</div>
<hr>
</c:forEach>

	
	<%@ include file="footer.jsp"%>
	
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>