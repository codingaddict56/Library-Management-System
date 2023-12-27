<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add User</title>
	<%@include file="all_css.jsp" %>
	<%@include file="navbar.jsp" %>
</head>
<body class="bg-light">
	<div class="bg-image col-md-12">
	<%@include file="dynamic_icons.jsp" %>
		<div class="container p-4">
			<div style="height:200px"></div>
			<div class="library-card">
				<div class="col-md-12" style="text-align:right;">
					<input type="submit" class="btn btn-secondary" onclick="history.back()" value="Go Back"/>
				</div>
				<div class="card-body" >
					<p class="mb-4 text-center header-font">Add User</p>
					<form action="userServlet" method="post">
						  
						  
						  <!-- <div class="mb-3">
						    <label class="form-label">User Id</label>
						    <input type="text" name="userId" class="form-control">
						  </div> -->
						  <div class="mb-3">
						    <label class="form-label">First Name</label>
						    <input type="text" name="userFName" class="form-control">
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">Last Name</label>
						    <input type="text" name="userLName" class="form-control">
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">Email Address</label>
						    <input type="email" name="userEmailId" class="form-control">
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">Course</label>
						    <input type="text" name="course" class="form-control">
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">User Type</label>
						     <select class="form-select" name="type" aria-label="Default select example">
							  <option value="student" selected>Student</option>
							  <option value="faculty" >Faculty</option>
							  <option value="attendant" >Attendant</option>
							  
							</select>
						  </div>
						  
						   <div class="mb-3">
						    <label class="form-label">User Role</label>
						     <select class="form-select" name="role" aria-label="Default select example">
							  <option value="user" selected>User</option>
							  <option value="admin">Admin</option>
							  
							</select>
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">Enter Password</label>
						    <input type="password" name="userPassword" class="form-control">
						  </div>
						  
						  <button type="submit" class="btn btn-success col-md-12">Submit</button>
					</form>
				</div>
			</div>
		</div>
		<%@include file="navbar-footer.jsp" %>	
	</div>
</body>
</html>