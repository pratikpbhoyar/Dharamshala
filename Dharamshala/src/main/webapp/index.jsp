<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Home</title>
<link rel = "icon" href = "img/logo.jpg" type = "image/x-icon">
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
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
<body style="background-color: #2c2f30; margin-bottom:55px;">

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<%@include file="all_component/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="img/user-bg1.jpg"
					alt="First slide" height="370px">
				<div class="carousel-caption d-none d-md-block">
					<i class="fas fa-book-open fa-3x" style="color: #ff843c"></i><h4 class="" style="color: #ff843c">Dharmik Grantho aur Kavya ka Sangrah</h4>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/user-bg2.jpg"
					alt="First slide" height="370px">
				<div class="carousel-caption d-none d-md-block">
					<i class="fas fa-book-open fa-3x" style="color: #ff843c"></i><h4 class="" style="color: #ff843c">Dharmik Grantho aur Kavya ka Sangrah</h4>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/user-bg3.jpg"
					alt="First slide" height="370px">
				<div class="carousel-caption d-none d-md-block">
					<i class="fas fa-book-open fa-3x" style="color: #ff843c"></i><h4 class="" style="color: #ff843c">Dharmik Grantho aur Kavya ka Sangrah</h4>
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

	<!-- Start Recent Book -->

	<div class="container">
		<h3 class="text-center p-4" style="color: #ff7903">Recent Book</h3>

		<div class="row">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getRecentBooks();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-4" style="background-color: #242729">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class="text-white"><%=b.getBookName()%></p>
						<p class="text-white"><%=b.getAuthor()%></p>
						<p class="text-white">

							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row" style="text-align: center; display: block;">

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm">View Detail</a> <a href=""
								class="btn btn-danger btn-sm"><%=b.getPrice()%> <i
								class="fas fa-rupee-sign"></i></a>
						</div>
						<%
						} else {
						%>
						Categories :
						<%=b.getBookCategory()%></p>
						<div class="row" style="text-align: center; display: block;">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm">Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm">Add Cart</a>
							<%
							}
							%>



							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm">View Detail</a> <a href=""
								class="btn btn-danger btn-sm"><%=b.getPrice()%> <i
								class="fas fa-rupee-sign"></i></a>
						</div>
						<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-5">
			<a href="all_recent_book.jsp"
				class="btn-sm text-white btn-block btn-sm p-2" style="background-color: #ff7903">View
				All</a>
		</div>

	</div>
	<!-- End Recent Book -->



	<!-- Start New Book -->

	<div class="container">
		<h3 class="text-center p-4" style="color: #ff7903">New Book</h3>
		<div class="row">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-4" style="background-color: #242729">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class="text-white"><%=b.getBookName()%></p>
						<p class="text-white"><%=b.getAuthor()%></p>
						<p class="text-white">
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row" style="text-align: center; display: block;">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm">Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm">Add Cart</a>
							<%
							}
							%>


							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm">View Detail</a> <a href=""
								class="btn btn-danger btn-sm"><%=b.getPrice()%> <i
								class="fas fa-rupee-sign"></i></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>


		</div>
		<div class="text-center mt-5">
			<a href="all_new_book.jsp"
				class="btn-sm text-white btn-block btn-sm p-2" style="background-color: #ff7903">View
				All</a>
		</div>

	</div>
	<!-- End New Book -->



	<!-- Start Old Book -->

	<div class="container">
		<h3 class="text-center p-4" style="color: #ff7903">Old Book</h3>
		<div class="row">

			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao2.getOldBooks();
			for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-4" style="background-color: #242729">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class="text-white"><%=b.getBookName()%></p>
						<p class="text-white"><%=b.getAuthor()%></p>
						<p class="text-white">Categories : <%=b.getBookCategory()%></p>

						<div class="row" style="text-align: center; display: block;">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm">View Detail</a> <a href=""
								class="btn btn-danger btn-sm"><%=b.getPrice()%> <i
								class="fas fa-rupee-sign"></i></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center mt-5">
			<a href="all_old_book.jsp"
				class="btn-sm text-white btn-block btn-sm p-2" style="background-color: #ff7903">View
				All</a>
		</div>

	</div>
	<!-- End Old Book -->
	<div class="fixed-bottom">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>