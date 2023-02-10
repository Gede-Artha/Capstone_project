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

<title>Login</title>
</head>
<body>	
	<%@ include file="navbarlanding.jsp"%>
	
<main >
        <section id="login" >
          <div class="container mt-5" >
            <div class="d-flex justify-content-center" >
              <div class="login-form" >
                <h2  class="text-primary"  align="center" >Sign in</h2>
                
               <div class="mb-3" align="center">
							<span class="err-msg">${response}</span>
				</div>
                
                <!-- Login Form -->
                <form:form  method="post" align="center"  modelAttribute="loginDto"
								action="check" class="mt-4 d-flex flex-column">
                  <div class="form-group">
                    <form:input path="emailId" name="email" id="email" class="form-control mb-3"  type="text" placeholder="Email" />
                  </div>
                  
                  
                  <div class="form-group">
                    <form:input path="password" name="pass" id="pass" class="form-control" type="password" placeholder="Password" />
                  </div>
                
                  
                  
                  <div class="forgot-password mt-3 mb-3 text-end">
                    <a class="text-decoration-none" href="forgotPassword" style="margin-left:50px">Forgot Password?</a>
                  </div>
                  <button class="btn btn-primary" type="submit">Login</button>
                </form:form>
                
                <p class="p-0 mt-3">
                  Still Dont have an account?
                  <a class="text-primary text-decoration-none" href="register"> Register </a>
                </p>
              </div>
            </div>
          </div>
        </section>
      </main>




	<%@ include file="footer.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="script/login.js"></script>
</body>
</html>