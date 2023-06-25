<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: User Address</title>
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
<body style="background-color: #f7f7f7">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row mt-4">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center text-primary">Add Address</h4>
						<form action="">
							<div class="form-row">
								
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Landmark</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>

							<div class="form-row">
								
								<div class="form-group col-md-4">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">State</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">Pin Code</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							
							<div class="text-center">
							<br>
								<button class="btn btn-warning btn-block btn-sm">Add Address</button>
							<br>
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