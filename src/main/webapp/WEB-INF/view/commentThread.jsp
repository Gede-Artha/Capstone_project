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
		body{margin-top:20px;}

.comment-wrapper .panel-body {
    max-height:650px;
    overflow:auto;
}

.comment-wrapper .media-list .media img {
    width:64px;
    height:64px;
    border:2px solid #e5e7e8;
}

.comment-wrapper .media-list .media {
    border-bottom:1px dashed #efefef;
    margin-bottom:25px;
}
	</style>
<title>Comment</title>
</head>
<body>
	<%@ include file="navbarstyle.jsp"%>
	
	<div class="container" style="margin-left:200px">
<div class="row bootstrap snippets bootdeys">
    <div class="col-md-8 col-sm-12">
        <div class="comment-wrapper">
            <div class="panel panel-info">
                <div class="panel-heading" >
                   <b style="margin-left:20px">Comment</b> 
                </div>
                <div class="panel-body">
                	<form:form method="post" class="col-8" modelAttribute="threaad" action="docomment">
                    <form:textarea path="threadCmnt" style="width:470px" placeholder="write a comment..." rows="3"/>
                    
                    <br>
                    <form:button  class="btn btn-info pull-right" type="submit" value="Save">Comment</form:button>
                    <div class="clearfix"></div>
                    <hr>
                    </form:form>
                </div>
            </div>
        </div>

    </div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>