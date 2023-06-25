<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: View Book</title>
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
	
	<%
		User u=(User)session.getAttribute("userobj");
	%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"/>
	</c:if>
	
	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b=dao.getBookById(bid);
	%>
	
	<div class="container p-3">
		<div class="row p-5">
			<div class="col-md-6 text-center p-5 border" style="background-color: #242729;">
			
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="block" src="book/<%=b.getPhotoName() %>"
								alt="First slide" height="200px" width="170px" style="border: 4px solid; border-color: white;">
						</div>
						<div class="carousel-item">
							<img class="block" src="book/<%=b.getPhotoName() %>"
								alt="First slide" height="200px" width="170px" style="border: 4px solid; border-color: white;">
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
			
				<h4 class="mt-3 text-white">Book Name : <span class="text-success"><%=b.getBookName() %></span></h4>
				<h4 class="text-white">Author : <span class="text-success"><%=b.getAuthor() %></span></h4>
				<h4 class="text-white">Category : <span class="text-success"><%=b.getBookCategory() %></span></h4>
			</div>
			
			<div class="col-md-6 text-center p-5 border" style="background-color: #242729">
				<h2 class=" text-white pt-2"><%=b.getBookName() %></h2>
				
				<%
				if("Old".equals(b.getBookCategory()))
				{
				%>
				<h5 class="text-primary">Contact To Seller</h5>
				<h5 class="text-primary">
					<i class="far fa-envelope"></i> E-Mail : <a href="mailto: <%=b.getEmail()%>"><%=b.getEmail()%></a>
				</h5>
				<%
				}
				%>
				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-money-bill-wave fa-2x pt-3"></i>
						<p>Cash on Delivery</p>
					</div>
					
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-undo-alt fa-2x pt-3"></i>
						<p>Return Available</p>
					</div>
					
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-truck-moving fa-2x pt-3"></i>
						<p>Free Shipping</p>
					</div>
				</div>
				
				<% if("Old".equals(b.getBookCategory())){ %>
				<div class="text-center p-3">
					<a href="index.jsp" class="btn btn-success"><i class="fas fa-cart-plus"></i> Continue Shopping</a>
					<a href="" class="btn btn-danger"><i class="fas fa-rupee-sign"></i> <%=b.getPrice() %></a>
				</div>
				<%}else{ %>
				<div class="text-center p-3">
					<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add Card</a>
					<a href="" class="btn btn-danger"><i class="fas fa-rupee-sign"></i> <%=b.getPrice() %></a>
				</div>
				<%} %>
				
			</div>
		</div>
	</div>
	<div class="fixed-bottom">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>