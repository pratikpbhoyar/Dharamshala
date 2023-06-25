<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Setting</title>
<link rel = "icon" href = "img/logo.jpg" type = "image/x-icon">
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">
a {
	text-decoration: none;
	color: block;
}

a:hover {
	text-decoration: none;
}

@media (max-width: 768px) {
    body {
        height:100vh;
    }
}


.card:hover{
    transform:scale(1.1);
    border:2px solid blue;
}

.card{
  transition:.3s;
}
</style>

</head>
<body style="background-color: #2c2f30">
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"/>
	</c:if>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		
		<h3 class="text-center text-white pt-3">Hello, ${userobj.name }</h3>
		
		
		<div class="row p-5">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card mt-2" style="background-color: #242729">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fas fa-book-medical fa-3x"></i>
							</div>
							<h4 style="color: white;">Sell Old Book</h4>
							<p style="color: white;">Add Your Book</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card mt-2" style="background-color: #242729">
						<div class="card-body text-center">
							<div class="text-success">
								<i class="fas fa-book-open fa-3x"></i>
							</div>
							<h4 style="color: white;">Old Book</h4>
							<p style="color: white;">Your Books</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card mt-2" style="background-color: #242729">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fas fa-edit fa-3x"></i>
							</div>
							<h4 style="color: white;">Edit Profile</h4>
							<p style="color: white;">Login & Security</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6 mt-3">
				<a href="order.jsp">
					<div class="card" style="background-color: #242729">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fas fa-box-open fa-3x"></i>
							</div>
							<h4 style="color: white;">My Order</h4>
							<p style="color: white;">Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6 mt-3">
				<a href="helpline.jsp">
					<div class="card" style="background-color: #242729">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fas fa-user-circle fa-3x"></i>
							</div>
							<h4 style="color: white;">Help Center</h4>
							<p style="color: white;">24*7 Service</p>
						</div>
					</div>
				</a>
			</div> 
			
		</div>
	</div>
	<div class="fixed-bottom">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>