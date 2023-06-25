<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>

<div class="container-fluid"
	style="height: 10px; background-color: #ff7903">
</div>

<div class="container-fluid p-3" style="background-color: #2c2f30">
	<div class="row">
		<div class="col-md-3" style="color: #ff7903">
			<h3>
				<i class="fas fa-book"></i> Dharamshala
			</h3>
		</div>
		<div class="col-md-4">
			<form class="form-inline my-2 my-lg-0" action = "search.jsp" method = "post">
				<input class="form-control mr-sm-2" type="search" name = "ch"
					placeholder="Search" aria-label="Search" style="background-color: #2c2f30; color : #ffffff">
				<button class="btn my-2 my-sm-0" type="submit" style="background-color: #ff7903">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj }">
			<div class="col-md-5" align="right">
				<a href="checkout.jsp" class="btn text-white" style="background-color: #ff7903"><i class="fas fa-cart-plus"></i> Carts</a>
				<a href="login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> ${userobj.name}</a> 
				<a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger text-white"><i class="fas fa-sign-in-alt"></i> Logout</a>
			</div>
		</c:if>

		<c:if test="${empty userobj }">
			<div class="col-md-5 pl-5" align="right">
				<a href="login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Login</a> 
				<a href="register.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> Register</a>
			</div>
		</c:if>	
	</div>
</div>

<!-- logout modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-body bg-secondary">
      	<div class = "text-center">
	  		<h4>Are you sure ?<br>You want to LogOut Account</h4>
	  		<button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        	<a href = "logout" type="button" class="btn btn-danger text-white">LogOut</a>
        </div>
      </div>
      
    </div>
  </div>
</div>

<!-- end logout modal -->

<nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background-color: #ff7903">
	<a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_recent_book.jsp"><i
					class="fas fa-book-open"></i> Recent Book</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_new_book.jsp"><i
					class="fas fa-book-open"></i> New Book</a></li>
			<li class="nav-item active"><a class="nav-link disabled"
				href="all_old_book.jsp"><i class="fas fa-book-open"></i> Old Book</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href = "setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit">
				<i class="fas fa-cog"></i> Setting
			</a>
			<a href = "helpline.jsp" class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fas fa-phone-square-alt"></i> Contact Us
			</a>
		</form>
	</div>
</nav>