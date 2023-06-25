<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dharamshala: Order Success</title>
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
	
	<div class = "container text-center mt-3">
		<i class = "fas fa-check-circle fa-5x text-success"></i>
		<h1 class="text-white">Thank You</h1>
		<h2 class="text-white">Your Order Placed Successfully</h2>
		<h5 class="text-white">With in 7 Days Your Product will be Delivered in Your Address</h5>
		<a href = "index.jsp" class = "btn btn-primary mt-3">Home</a>
		<a href = "order.jsp" class = "btn btn-danger mt-3">View Order</a>
	</div>
	<div class="fixed-bottom">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>