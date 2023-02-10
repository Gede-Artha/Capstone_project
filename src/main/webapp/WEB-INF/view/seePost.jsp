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
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
	<style>
		.panel-shadow {
    box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
}
.panel-white {
  border: 1px solid #dddddd;
}
.panel-white  .panel-heading {
  color: #333;
  background-color: #fff;
  border-color: #ddd;
}
.panel-white  .panel-footer {
  background-color: #fff;
  border-color: #ddd;
}

.post .post-heading {
  height: 95px;
  padding: 20px 15px;
}
.post .post-heading .avatar {
  width: 60px;
  height: 60px;
  display: block;
  margin-right: 15px;
}
.post .post-heading .meta .title {
  margin-bottom: 0;
}
.post .post-heading .meta .title a {
  color: black;
}
.post .post-heading .meta .title a:hover {
  color: #aaaaaa;
}
.post .post-heading .meta .time {
  margin-top: 8px;
  color: #999;
}
.post .post-image .image {
  width: 100%;
  height: auto;
}
.post .post-description {
  padding: 15px;
}
.post .post-description p {
  font-size: 14px;
}
.post .post-description .stats {
  margin-top: 20px;
}
.post .post-description .stats .stat-item {
  display: inline-block;
  margin-right: 15px;
}
.post .post-description .stats .stat-item .icon {
  margin-right: 8px;
}
.post .post-footer {
  border-top: 1px solid #ddd;
  padding: 15px;
}
.post .post-footer .input-group-addon a {
  color: #454545;
}
.post .post-footer .comments-list {
  padding: 0;
  margin-top: 20px;
  list-style-type: none;
}
.post .post-footer .comments-list .comment {
  display: block;
  width: 100%;
  margin: 20px 0;
}
.post .post-footer .comments-list .comment .avatar {
  width: 35px;
  height: 35px;
}
.post .post-footer .comments-list .comment .comment-heading {
  display: block;
  width: 100%;
}
.post .post-footer .comments-list .comment .comment-heading .user {
  font-size: 14px;
  font-weight: bold;
  display: inline;
  margin-top: 0;
  margin-right: 10px;
}
.post .post-footer .comments-list .comment .comment-heading .time {
  font-size: 12px;
  color: #aaa;
  margin-top: 0;
  display: inline;
}
.post .post-footer .comments-list .comment .comment-body {
  margin-left: 50px;
}
.post .post-footer .comments-list .comment > .comments-list {
  margin-left: 50px;
}
	</style>
<title>Job detail</title>
</head>
<body>
	<%@ include file="navbarstyle.jsp"%>
	
	<div class="container bootstrap snippets bootdey">
    <div class="col-sm-8">
        <div class="panel panel-white post panel-shadow">
            <div class="post-heading">
            	<div>
            		<button type="button"
						class="btn btn-warning" style="margin-left: 590px"><a href="${pageContext.request.contextPath}/applyUser">Apply</a></button>
            	</div>
                <div class="pull-left image">
                    <img src="https://statik.tempo.co/data/2013/02/15/id_167568/167568_620.jpg" class="img-circle avatar" style="width:120px">
                </div>
                
                <div class="pull-left meta">
                    <div class="title h5">
                        <b>Admin</b>
                        post new jobs.
                    </div>
                    <h6 class="text-muted time">${posting.time}</h6>
                </div>
            </div> 
            <div class="post-description"> 
               <div class="post-description"> 
                <h4 class="text-primary"><b>${posting.position}</b></h4>
               	<p class="text-muted time"><b>${posting.companyName}</b></p>
               	<p class="text-muted time"><b>${posting.location}</b></p>
               	<p><b>${posting.salary}</b></p>
               	<p><b>${posting.postMessage}</b></p>
                <div class="stats">
                    <a href="#" class="btn btn-default stat-item">
                        <i class="fa fa-thumbs-up icon"></i>
                    </a>
                    <a href="#" class="btn btn-default stat-item">
                        <i class="fa fa-share icon"></i>
                    </a>
                    
                     <a href="${pageContext.request.contextPath}/commentThread" class="btn btn-default stat-item">
                        <i class="fa fa-comment icon"></i>
                    </a>
                    
                       
                    
            </div>
            
            
              
            <div class="post-footer">
                <ul class="comments-list">
                    <li class="comment">
                        <a class="pull-left" href="#">
                            <img class="avatar" src="https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/bali-nusa-tenggara/bali/bali/Image1.jpg" alt="avatar">
                        </a>
                      
                        <div class="comment-body">
                            <div class="comment-heading">
                                <h4 class="user">Artha</h4>
                                
                            </div>
                            <p>${threaad.threadCmnt}</p>
                        </div>
                        
                    </li>
                </ul>
            </div>
          
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>