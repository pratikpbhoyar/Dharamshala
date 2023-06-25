<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala : Old Books</title>
<link rel = "icon" href = "img/logo.jpg" type = "image/x-icon">
<%@include file="all_component/allCss.jsp"%>
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
	td:nth-of-type(1):before { content: "Book Name"; }
	td:nth-of-type(2):before { content: "Author"; }
	td:nth-of-type(3):before { content: "Price"; }
	td:nth-of-type(4):before { content: "Category"; }
	td:nth-of-type(5):before { content: "Action"; }
	
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
  background: #ff843c; 
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
<body style="background-color: #2c2f30; margin-bottom:40px;">
	<%@include file="all_component/navbar.jsp"%>

	<c:if test="${not empty succMsg }">
		<div class="alert alert-success text-center">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<div class="container p-5">
		<table class="table table-striped">
			<thead class="bg-primary text-white" class="table table-striped">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody class="text-white">

				<%
				User u = (User) session.getAttribute("userobj");
				String email = u.getEmail();
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getBookByOld(email, "Old");
				for (BookDtls b : list) {
				%>
				<tr>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><a
						href="delete_old_book?em=<%=email%>&&id=<%=b.getBookId()%>"
						class="btn btn-sm btn-danger">Delete</a></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
	</div>
	<div class="fixed-bottom">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>