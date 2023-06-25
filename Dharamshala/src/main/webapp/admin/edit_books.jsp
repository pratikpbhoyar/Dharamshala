<%@page import="com.entity.BookDtls"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala-Admin: Edit Books</title>
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
<body style="background-color: #2c2f30">
	<%@include file="navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card" style="background-color: #242729">
					<div class="card-body">
						<h4 class="text-center text-white">Edit Books</h4>
						<hr style="height: 1px; width: auto; background-color: white;">
	 					<%
	 						int id = Integer.parseInt(request.getParameter("id"));
	 						BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	 						BookDtls b = dao.getBookById(id);
	 					%>
	 					
						<form action="../editbooks" method="post">
							<input type = "hidden" name = "id" value = "<%=b.getBookId()%>">
							<div class="form-group">
								<label for="exampleInputEmail1" style="color : #ffffff">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									placeholder="Name" required="required" id="exampleInputEmail" aria-describedby="emailHelp" value = "<%=b.getBookName()%>" style="background-color: #2c2f30; color : #ffffff">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1" style="color : #ffffff">Author Name*</label> <input
									name="author" type="text" class="form-control"
									placeholder="Author" required="required" id="exampleInputEmail" aria-describedby="emailHelp" value = "<%=b.getAuthor()%>" style="background-color: #2c2f30; color : #ffffff">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1" style="color : #ffffff">Price*</label> <input
									name="price" type="number" class="form-control"
									placeholder="Price" required="required" id="exampleInputPasswordl" value = "<%=b.getPrice()%>" style="background-color: #2c2f30; color : #ffffff">
							</div>
							
							<div class="form-group">
								<label for="inputState" style="color : #ffffff">Book Status</label> <select
									id="inputState" name="bstatus" class="form-control" required="required" style="background-color: #2c2f30; color : #ffffff">
									<%
										if("Active".equals(b.getStatus()))
										{
									%>
									<option value = "Active">Active</option>
									<option value = "Inactive">Inactive</option>
									<%
										}
										else
										{
									%>
									<option value = "Inactive">Inactive</option>
									<option value = "Active">Active</option>
									<%
										}
									%>
								</select>
							</div>
						
							<button type = "submit" class="btn btn-block btn-sm text-white" style="background-color : #480e4b">Update</button>
						
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