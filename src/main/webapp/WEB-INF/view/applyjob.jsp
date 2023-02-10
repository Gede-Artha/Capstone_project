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
<title>ApplyJob</title>
</head>
<body>
	<%@ include file="navbarstyle.jsp"%>

<div class="container" style="margin-left:200px">
<div class="row bootstrap snippets bootdeys">
    <div class="col-md-8 col-sm-12">
        <div class="comment-wrapper">
        <div class="section-title text-center">
			<h2>Apply Job</h2>
		</div>
            <div class="panel panel-info">
                <form:form method="post" class="col-10" modelAttribute="user_apply" action="doapply">
                <div class="panel-body">
                	
                    <div class="form-group col-md-12">
								<form:hidden class="form-label" path="id_apply"/>
							</div>
							<div class="form-group col-md-6">
								<form:input class="form-control"  path="userName_apply"  placeholder="Jobs position that apply" required="required" />
							</div>
							<div class="form-group col-md-6">
								<form:input class="form-control"  path="apply_company"  placeholder="Company" required="required" />
							</div>
							<div class="form-group col-md-6">
								<form:input type="text"  class="form-control"  path="apply_positition"  placeholder="Username" required="required" />
							</div>
							
                    
                    <form:button  class="btn btn-info" style="margin-left: 100px" type="submit" value="Save">Apply</form:button>
                    <div class="clearfix"></div>
                   
                    
                </div>
                </form:form>
            </div>
        </div>

    </div>
</div>
</div>

</body>
</html>