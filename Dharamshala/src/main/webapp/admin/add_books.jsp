<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala-Admin: Add Books</title>
<link rel = "icon" href = "../img/logo.jpg" type = "image/x-icon">
<%@include file="allCss.jsp"%>
<style>
@media (max-width: 768px) {
    body {
        height:100vh;
    }
}
</style>
</head>
<body style="background-color: #2c2f30; margin-bottom:30px;">
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card" style="background-color: #242729">
					<div class="card-body">
						<h4 class="text-center text-white">ADD BOOKS</h4>
						<hr style="height: 1px; width: auto; background-color: white;">
						<c:if test = "${not empty succMsg }">
							<p class = "text-center text-success">${succMsg }</p>
							<c:remove var = "succMsg" scope = "session"/>
						</c:if>
						
						<c:if test = "${not empty failedMsg }">
							<p class = "text-center text-danger">${failedMsg }</p>
							<c:remove var = "failedMsg" scope = "session"/>
						</c:if>
	 			
						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1" style="color : #ffffff">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									placeholder="Name" required="required" id="exampleInputEmail" aria-describedby="emailHelp" style="background-color: #2c2f30; color : #ffffff">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1" style="color : #ffffff">Author Name*</label> <input
									name="author" type="text" class="form-control"
									placeholder="Author" required="required" id="exampleInputEmail" aria-describedby="emailHelp" style="background-color: #2c2f30; color : #ffffff">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1" style="color : #ffffff">Price*</label> <input
									name="price" type="number" class="form-control"
									placeholder="Price" required="required" id="exampleInputPasswordl" style="background-color: #2c2f30; color : #ffffff">
							</div>

							<div class="form-group">
								<label for="inputState" style="color : #ffffff">Book Categories</label> <select
									required="required" id="inputState" name="categories" class="form-control" style="background-color: #2c2f30; color : #ffffff">
									<option selected>--Select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							
							<div class="form-group">
								<label for="inputState" style="color : #ffffff">Book Status</label> <select
									required="required" id="inputState" name="bstatus" class="form-control" style="background-color: #2c2f30; color : #ffffff">
									<option selected>--Select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
							
							<div class = "form-group">
								<label for = "exampleFormControlFile1" style="color : #ffffff">Upload Photo</label> <input
								name = "bimg" type = "file" class = "form-control-file"
								required="required" id = "exampleFormControlFiled" style=" color : #ffffff">
							</div>
						
							<button type = "submit" class="btn btn-block btn-sm text-white" style="background-color : #480e4b">Add</button>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="fixed-bottom">
		<%@include file="footer.jsp"%>
	</div>
	
</body>
</html>