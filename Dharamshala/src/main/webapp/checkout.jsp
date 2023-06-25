<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Carts</title>
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
	td:nth-of-type(4):before { content: "Action"; }
	
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
}

</style>
</head>
<body style="background-color: #2c2f30; margin-bottom:40px;">
	<%@include file="all_component/navbar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
	<c:if test="${not empty succMsg }">
		<div class="alert alert-success" role="alert">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<div class="alert alert-danger text-center" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<div class="container">
		<div class="row p-2 mt-2">
			<div class="col-md-6">

				<div class="cart bg-white">
					<div class="card-body" style="background-color: #242729">
						<h3 class="text-center text-success">Your Cart Items</h3>
						<hr style="margin-top: 1px; background-color:green;">
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<%
								User u = (User) session.getAttribute("userobj");
								CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
								List<Cart> cart = dao.getBookByUser(u.getId());
								Double totalPrice = 0.00;
								for (Cart c : cart) {
									totalPrice = c.getTotalPrice();
								%>
								<tr style="background: #333;">
									<td scope="row" style="background: #333;" class="text-white"><%=c.getBookName()%></td>
									<td class="text-white"><%=c.getAuthor()%></td>
									<td class="text-white"><%=c.getPrice()%></td>
									<td class="text-white"><a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId() %>&&cid=<%=c.getCid()%>" class="btn btn-sm btn-danger">Remove</a></td>
								</tr>

								<%
								}
								%>

								<tr class="text-white" style="background: #ff843c">
									<td><h6>TOTAL PRICE</h6></td>
									<td><h6>--</h6></td>
									<td><h6><%=totalPrice%></h6></td>
									<td><h6>--</h6></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<hr>
			</div>

			
			<div class="col-md-6">
				<div class="cart bg-white">
					<div class="card-body" style="background-color: #242729">
						<h3 class="text-center text-success">Your Details for Order</h3>
						<hr style="margin-top: 1px; background-color:green;">
						<form action="order" method="post">
						<input type = "hidden" value = "${userobj.id }" name = "id">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4" style="color : #ffffff">Name</label> <input type="text" name = "username"
										class="form-control" placeholder="Name" id="inputEmail4" value="${userobj.name }" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4" style="color : #ffffff">Email</label> <input type="email" name = "email"
										class="form-control" placeholder="Email" id="inputPassword4" value = "${userobj.email }" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4" style="color : #ffffff">Phone Number</label> <input name = "phno"
										type="number" class="form-control" placeholder="Phone" id="inputEmail4" value = "${userobj.phno }" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4" style="color : #ffffff">Address</label> <input type="text" name = "address"
										class="form-control" placeholder="Address" id="inputPassword4" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4" style="color : #ffffff">Landmark</label> <input type="text" name = "landmark"
										class="form-control" placeholder="Landmark" id="inputEmail4" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4" style="color : #ffffff">City</label> <input type="text" name = "city"
										class="form-control" placeholder="City" id="inputPassword4" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4" style="color : #ffffff">State</label> <input type="text" name = "state"
										class="form-control" placeholder="State" id="inputEmail4" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4" style="color : #ffffff">Pin Code</label> <input type="number" name = "pincode"
										class="form-control" placeholder="Pin Code" id="inputPassword4" style="background-color: #2c2f30; color : #ffffff" required>
								</div>
							</div>

							<div class="form-group">
								<label style="color : #ffffff">Payment Mode</label> <select class="form-control" name = "payment" style="background-color: #2c2f30; color : #ffffff">
									<option value = "noselect">--Select--</option>
									<option value = "COD">Cash On Delivery</option>
								</select>
							</div>

							<div class="text-center">
								<button class="btn btn-warning text-white">Order now</button>
								<a href="index.jsp" class="btn btn-success text-white">Continue
									Shopping</a>
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