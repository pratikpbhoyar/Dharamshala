<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Login</title>
<link rel = "icon" href = "img/logo.jpg" type = "image/x-icon">
<%@include file="all_component/allCss.jsp"%>
<style>
@media (max-width: 768px) {
    body {
        height:100vh;
    }
}
</style>
</head>
<body style="background-color: #2c2f30">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card" style="background-color: #242729">
					<div class="card-body">
						<h4 class="text-center text-white text"><i class="fas fa-sign-in-alt"></i> Login User</h4>
						<hr style="height: 1px; width: auto; background-color: white;">
						
						<c:if test = "${not empty failedMsg}">
							<h5 class = "text-center text-danger">${failedMsg}</h5>
							<c:remove var = "failedMsg" scope = "session"/>
						</c:if>
						
						<c:if test = "${not empty succMsg}">
							<h5 class = "text-center text-success">${succMsg}</h5>
							<c:remove var = "succMsg" scope = "session"/>
						</c:if>
						
						<form action = "login" method = "post">

							<div class="form-group">
								<label for="exampleInputEmail1" style="color : #ffffff">Enter Email Address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="E-Mail" required="required" name = "email" style="background-color: #2c2f30; color : #ffffff">

							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1" style="color : #ffffff">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name = "password" style="background-color: #2c2f30; color : #ffffff">
							</div>
							
							<div class="text-center">
								<br>
								<button type="submit" class="btn btn-block btn-sm text-white" style="background-color : #ff843c">Login</button><br>
								<a href="register.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fixed-bottom">
		<%@include file="all_component/footer.jsp"%>
	</div>

</body>
</html>