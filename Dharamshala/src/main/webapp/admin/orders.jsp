<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala-Admin: All Orders</title>
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
	td:nth-of-type(1):before { content: "Order Id"; }
	td:nth-of-type(2):before { content: "Name"; }
	td:nth-of-type(3):before { content: "Email"; }
	td:nth-of-type(4):before { content: "Address"; }
	td:nth-of-type(5):before { content: "Phone No"; }
	td:nth-of-type(6):before { content: "Book Name"; }
	td:nth-of-type(7):before { content: "Author"; }
	td:nth-of-type(8):before { content: "Price"; }
	td:nth-of-type(8):before { content: "Payment Type"; }
	
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
}
</style>
</head>
<body style="background-color: #2c2f30; margin-bottom:50px;">
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<%@include file="navbar.jsp"%>
	<h3 class="text-center text-white pt-2">ORDERS</h3>
	<div style = "margin: 15px">
	<table class="table table-striped ">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Order Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone No</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>
		
		<%
		BookOrderImpl dao = new BookOrderImpl(DBConnect.getConn());
		List<Book_Order> blist = dao.getAllOrder();
		for(Book_Order b : blist)
		{
		%>
			<tr>
				<td class="text-white bg-secondary" scope="row"><%=b.getOrderId() %></td>
				<td class="text-white"><%=b.getUserName() %></td>
				<td class="text-white"><%=b.getEmail() %></td>
				<td class="text-white"><%=b.getFulladd() %></td>
				<td class="text-white"><%=b.getPhno() %></td>
				<td class="text-white"><%=b.getBookName() %></td>
				<td class="text-white"><%=b.getAuthor() %></td>
				<td class="text-white"><%=b.getPrice() %></td>
				<td class="text-white"><%=b.getPaymentType() %></td>
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