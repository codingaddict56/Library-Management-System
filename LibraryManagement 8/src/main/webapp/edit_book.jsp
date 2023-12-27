<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.BookDAO"%>
<%@page import="com.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Book</title>
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
					<p class="mb-4 text-center header-font">Edit Book</p>
		
					<% 
					  int bookId=Integer.parseInt(request.getParameter("bookId"));
					  BookDAO dao = new BookDAO(DBConnect.getConn());
					  Book b=dao.getBookById(bookId);
					  %>
		
		<form action="updatebook" method="post">
		
			  <div class="mb-3">
			    <label class="form-label">Book ID</label>
			    <input readonly type="text" value="<%=b.getBookId()%>" name="bookId" class="form-control">
			  </div>
			  
			  <div class="mb-3">
			    <label class="form-label">Book Name</label>
			    <input type="text" value="<%=b.getBookName()%>"  name="bookName" class="form-control">
			  </div>
			  
			  <div class="mb-3">
			    <label class="form-label">Book Author</label>
			    <input type="text" value="<%=b.getBookAuthor()%>"  name="bookAuthor" class="form-control">
			  </div>
			  
			  <div class="mb-3">
			    <label class="form-label">Description</label>
			    <input type="text" value="<%=b.getDescription()%>"  name="description" class="form-control">
			  </div>
			  
			   <div class="mb-3">
			    <label class="form-label">Number Of Copies</label>
			    <input type="number" min={1} max={100} value="<%=b.getUnit()%>"  name="unit" class="form-control">
			  </div>
			  
			  <input type="hidden" name="bookId" value="<%=b.getBookId()%>" >
			  
			  <button type="submit" class="btn btn-primary col-md-12">Update</button>
			</form>
		
		</div>
		</div>
		</div>
		<%@include file="navbar-footer.jsp" %>
		</div>
		
	
</body>
</html>