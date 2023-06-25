<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Help Center</title>
<link rel = "icon" href = "img/logo.jpg" type = "image/x-icon">
<%@include file="all_component/allCss.jsp"%>
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
    border:2px solid blue;
}

.card{
  transition:.3s;
}
</style>
</head>
<body style="background-color: #2c2f30">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4 text-center">
				<div class="text-success">
					<i class="fas fa-phone-square-alt fa-5x mb-2"></i>
				</div>
				<h1 class="text-white">24*7 Service</h1>
				<h3 class="text-white">Dharamshala Help Line Center</h3>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row p-1">
			<div class="col-md-3">
				<a href="https://www.linkedin.com/in/pratikpbhoyar">
					<div class="card mt-3" style="background-color: #242729">
						<div class="card-body text-center">
							<img alt="" src="img/linkedin.png"
								style="width: 50px; height: 50px"><br>
							<h4>LinkedIn</h4>
							-----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="https://github.com/pratikpbhoyar">
					<div class="card mt-3" style="background-color: #242729">
						<div class="card-body text-center">
							<img alt="" src="img/github.png"
								style="width: 50px; height: 50px"><br>
							<h4>GitHub</h4>
							-----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="mailto: pratikbhoyar.in@gmail.com">
					<div class="card mt-3" style="background-color: #242729">
						<div class="card-body text-center">
							<img alt="" src="img/gmail.png" style="width: 50px; height: 50px"><br>
							<h4>G-Mail</h4>
							-----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="https://www.instagram.com/pratikpbhoyar/">
					<div class="card mt-3" style="background-color: #242729">
						<div class="card-body text-center">
							<img alt="" src="img/instagram.png"
								style="width: 50px; height: 50px"><br>
							<h4>Instagram</h4>
							-----------
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