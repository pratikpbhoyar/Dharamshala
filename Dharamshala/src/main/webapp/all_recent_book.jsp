<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.Db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> Dharamshala: All Recent Book</title>
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
<body style="background-color: #2c2f30; margin-bottom:40px;">
<%
User u=(User)session.getAttribute("userobj");
%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getAllRecentBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho m-4" style="background-color: #242729">
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
						
							<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm">View Detail</a> 
							<a href="" class="btn btn-danger btn-sm"><%=b.getPrice()%> <i class="fas fa-rupee-sign"></i></a>
						
						</div>
						<%
						} else {
						%>
						Categories :
						<%=b.getBookCategory()%></p>
						<div class="row" style="text-align: center; display: block;">
							<%
						if(u == null)
						{ 
						%>
						<a href="login.jsp" class="btn btn-danger btn-sm">Add Cart</a> 
						<%
						}
						else
						{ 
						%>
						<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm">Add Cart</a>
						<%
						} 
						%>
							<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm">View Detail</a> 
							<a href="" class="btn btn-danger btn-sm"><%=b.getPrice()%>
								<i class="fas fa-rupee-sign"></i></a>
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
	</div>
	<div class="fixed-bottom">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>