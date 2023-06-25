<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala-Admin: Home</title>
<link rel = "icon" href = "../img/logo.jpg" type = "image/x-icon">
<%@include file="allCss.jsp"%>

<style type="text/css">
a {
	text-decoration: none;
	color: block;
}

a:hover {
	text-decoration: none;
	color;
	black;
}

@media (max-width: 768px) {
    body {
        height:100vh;
    }
}

.card:hover{
    transform:scale(1.1);
    border:4px solid #39124c;
}

.card{
  transition:.3s;
}
</style>
</head>
<body style="background-color: #2c2f30">
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="../img/admin-bg1.jpg"
					alt="First slide" height="300px">
				<div class="carousel-caption d-none d-md-block">
					<i class="fas fa-book-open fa-3x" style="color: #ffffff"></i><h1 class="" style="color: #ffffff">Admin Room</h1>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="../img/admin-bg2.jpg"
					alt="First slide" height="300px">
				<div class="carousel-caption d-none d-md-block">
					<i class="fas fa-book-open fa-3x" style="color: #ffffff"></i><h1 class="" style="color: #ffffff">Admin Room</h1>
				</div>
			</div>
		</div>
		
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	
	
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card m-3" style="background-color: #242729;">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i><br>
							<h4 class="text-white">Add Books</h4>
							<h5 class="text-white">-----------</h5>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card m-3" style="background-color: #242729">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-danger"></i><br>
							<h4 class="text-white">All Books</h4>
							<h5 class="text-white">-----------</h5>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card m-3" style="background-color: #242729">
						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-warning"></i><br>
							<h4 class="text-white">Orders</h4>
							<h5 class="text-white">-----------</h5>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
			<a data-toggle="modal" data-target="#exampleModalCenter">
				<div class="card m-3" style="background-color: #242729">
					<div class="card-body text-center">
						<i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
						<h4 class="text-white">LogOut</h4>
						<h5 class="text-white">-----------</h5>
					</div>
				</div>
			</a>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Are you sure you want to LogOut Account</h4>
						<button type="button" class="btn btn-primary"
							data-dismiss="modal">Close</button>
						<button href="../logout" type="button"
							class="btn btn-danger text-white">LogOut</button>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- Modal End -->

	<div class="fixed-bottom">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>