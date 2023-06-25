<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Sell Book</title>
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
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="all_component/navbar.jsp"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page isELIgnored="false"%>
	<div class="container">
		<div class="row mt-4">
			<div class="col-md-4 offset-md-4">
				<div class="card" style="background-color: #242729">
					<div class="card-body">
						<h5 class="text-center text-white p-1">Sell Old Book</h5>
						<hr style="height: 1px; width: auto; background-color: white;">
						
						<c:if test="${not empty succMsg }">
							<h5 class="text-center text-success">${succMsg }</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<h5 class="text-center text-danger">${failedMsg }</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="add_old_book" method="post"
							enctype="multipart/form-data">

							<input type="hidden" value="${userobj.email }" name="user">

							<div class="form-group">
								<label for="exampleInputEmail1" style="color : #ffffff">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail" placeholder="Book Name" aria-describedby="emailHelp" style="background-color: #2c2f30; color : #ffffff" required>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1" style="color : #ffffff">Author Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputEmail" placeholder="Author Name" aria-describedby="emailHelp" style="background-color: #2c2f30; color : #ffffff" required>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1" style="color : #ffffff">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPasswordl" placeholder="Price" style="background-color: #2c2f30; color : #ffffff" required>
							</div>


							<div class="form-group">
								<label for="exampleFormControlFile1" style="color : #ffffff">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFiled" style="color : #ffffff" required>
							</div>

							<div class="text-center">
								<br>
								<button type="submit" class="btn btn-block btn-sm text-white" style="background-color : #ff843c">Sell</button>
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