
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add New Book</title>
	<%@include file="all_css.jsp" %>
	<%@include file="navbar.jsp" %>
</head>

<body class="bg-light">
	<div class="bg-image col-md-12">
	<%@include file="dynamic_icons.jsp" %>
			<div class="container p-4">
				<div style="height:200px"></div>
					<div class="library-card">
					<div class="col-md-12" style="text-align:right">
						<input type="submit" class="btn btn-secondary" onclick="history.back()" value="Go Back"/>
					</div>
						<div class="card-body" >
							<p class="fs-3 text-center">Add Book</p>
							
							
							<form action="bookServlet" method="post">
							
								  <!-- <div class="mb-3">
								    <label class="form-label">Book Id</label>
								    <input type="text" name="bookId" class="form-control">
								  </div> -->
								  
								  <div class="mb-3">
								    <label class="form-label">Book Name</label>
								    <input type="text" name="bookName" class="form-control">
								  </div>
								  
								  <div class="mb-3">
								    <label class="form-label">Book Author</label>
								    <input type="text" name="bookAuthor" class="form-control">
								  </div>
								  
								  <div class="mb-3">
								    <label class="form-label">Description</label>
								    <input type="text" name="description" class="form-control">
								  </div>
								  
								   <div class="mb-3">
								    <label class="form-label">Number Of Copies</label>
								    <input type="number" min=1 max=100 name="unit" class="form-control">
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