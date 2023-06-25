<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<div class="container-fluid"
	style="height: 10px; background-color: #480e4b"></div>

<div class="container-fluid p-3" style="background-color: #2c2f30">
	<div class="row">
		<div class="col-md-6" style="color: #ffffff">
			<h3>
				<i class="fas fa-book"></i> Dharamshala
			</h3>
		</div>

		<div class="col-md-6" align="right">
		<c:if test = "${not empty userobj }">
			<a class="btn btn-success text-white"><i class="fas fa-user"></i> ${userobj.name}</a>
			<a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger text-white"><i class="fas fa-sign-in-alt"></i> Logout</a>
		</c:if>
		<c:if test = "${empty userobj }">
			<a href="../login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Login</a> 
			<a href="../register.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> Register</a>
		</c:if>
			
		</div>
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
        	<a href = "../logout" type="button" class="btn btn-danger text-white">LogOut</a>
        </div>
      </div>
      
    </div>
  </div>
</div>

<!-- end logout modal -->

<nav class="navbar navbar-expand-lg navbar-dark bg-custom sticky-top" style="background-color: #480e4b">
	<a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			
		
	</div>
</nav>