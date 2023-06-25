<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Order</title>
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
	td:nth-of-type(1):before { content: "Order Id"; }
	td:nth-of-type(2):before { content: "Name"; }
	td:nth-of-type(3):before { content: "Book Name"; }
	td:nth-of-type(4):before { content: "Author"; }
	td:nth-of-type(5):before { content: "Price"; }
	td:nth-of-type(6):before { content: "Payment Type"; }
	
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
  background: #333;; 
}

</style>

</head>
<body style="background-color: #2c2f30; margin-bottom:50px;">
	<c:if test="${empty userobj }">
		<c:redirect url = "login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<h4 class="text-center text-white mt-3">Your Order </h4>
		<table class="table table-striped mt-3">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody class="text-white">
				<%
				User u = (User)session.getAttribute("userobj");
				BookOrderImpl dao = new BookOrderImpl(DBConnect.getConn());
				List<Book_Order> blist = dao.getBook(u.getEmail());
				for(Book_Order b : blist)
				{
				%>
				<tr>
					<td scope="row" style="background: #333;" class="text-white"><%=b.getOrderId() %></td>
					<td><%=b.getUserName() %></td>
					<td><%=b.getBookName() %></td>
					<td><%=b.getAuthor() %></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getPaymentType() %></td>
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