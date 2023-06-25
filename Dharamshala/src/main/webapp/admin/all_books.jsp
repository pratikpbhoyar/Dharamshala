<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
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
<title>Dharamshala-Admin: All Books</title>
<link rel = "icon" href = "../img/logo.jpg" type = "image/x-icon">
<%@include file="allCss.jsp"%>
<style>
@media (max-width: 768px) {
    body {
        height:100vh;
    }
}

/* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}
	
	td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
	}
	
	/*
	Label the data
	*/
	td:nth-of-type(1):before { content: "Id"; }
	td:nth-of-type(2):before { content: "Image"; }
	td:nth-of-type(3):before { content: "Book Name"; }
	td:nth-of-type(4):before { content: "Author"; }
	td:nth-of-type(5):before { content: "Price"; }
	td:nth-of-type(6):before { content: "Categories"; }
	td:nth-of-type(7):before { content: "Status"; }
	td:nth-of-type(8):before { content: "Action"; }
	
	
}


/* 
Generic Styling, for Desktops/Laptops 
*/
table { 
  width: 100%; 
  border-collapse: collapse; 
}
/* Zebra striping */
tr:nth-of-type(odd) { 
  background: #eee; 
}
th { 
  background: #480e4b;  
  color: white; 
  font-weight: bold; 
}
th { 
  padding: 6px; 
  border: 1px solid #ccc; 
  text-align: left; 
}
td { 
  padding: 6px; 
  border: 1px solid #ccc; 
  text-align: right; 
  background: #333; 
}
</style>
</head>
<body style="background-color: #2c2f30; margin-bottom:50px;">
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<h3 class="text-center text-white pt-2">ALL BOOKS</h3>

	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg }</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg }</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>


	<div style="margin: 15px">
		<table class="table table-striped ">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Image</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Categories</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getAllBooks();
				for (BookDtls b : list) {
				%>
				<tr>
					<td class="bg-secondary" class="text-white"><%=b.getBookId()%></td>
					<td class="text-white"><img src="../book/<%=b.getPhotoName()%>"
						style="width: 50px; height: 50px;"></td>
					<td class="text-white"><%=b.getBookName()%></td>
					<td class="text-white"><%=b.getAuthor()%></td>
					<td class="text-white"><%=b.getPrice()%></td>
					<td class="text-white"><%=b.getBookCategory()%></td>
					<td class="text-white"><%=b.getStatus()%></td>
					<td class="bg-secondary" class="text-white"><a href="edit_books.jsp?id=<%=b.getBookId()%>"
						class="btn btn-sm btn-primary"><i class = "fas fa-edit"></i> Edit</a> 
						<a href="../delete?id=<%=b.getBookId() %>" class="btn btn-sm btn-danger"><i class = "fas fa-trash-alt"></i> Delete</a></td>
				</tr>
				<%
				}
				%>

			</tbody>

		</table>
	</div>
	<div class="fixed-bottom">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>