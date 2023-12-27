<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.BookDAO"%>
<%@page import="com.entity.Book"%>
<%@page import="java.util.List"%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Books</title>
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
				<div class="card-body">
				<p class="mb-4 text-center header-font">Books</p>
					<table class="table">
					  <thead>
					    <tr>
					      	<th scope="col">Book ID</th>
					      	<th scope="col">Book Name</th>
					      	<th scope="col">Book Author</th>
					      	<th scope="col">Description</th>
					      	<th scope="col">Number of Copies</th>
				       		<th scope="col" style="text-align: center">Actions</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  <% 
						  BookDAO dao = new BookDAO(DBConnect.getConn());
						  List<Book> list = dao.getAllBook();
						  for(Book b : list){
					  %>
					  
					  
					    <tr>
					      <th scope="row"><%=b.getBookId() %></th>
					      <td><%=b.getBookName() %></td>
						  <td><%=b.getBookAuthor() %></td>
					      <td><%=b.getDescription() %></td>
					      <td><%=b.getUnit() %></td>
					      <td style="text-align: center;"><a href="edit_book.jsp?bookId=<%=b.getBookId()%>" class="btn btn-sm btn-primary" style="width:100px">Edit</a>
					      <a href="deletebook?bookId=<%=b.getBookId()%>" class="btn btn-sm btn-danger ms-1" style="width:100px">Delete</a>
					      </td>
					    </tr>
					    
					     <%
					  }
					  %>
						 
					  </tbody>
					</table>
					<form action="add_Book.jsp" method="post"> 
		          		<input type="submit" class="btn btn-primary" value="Add New Book"/>
		         	</form> 
				</div>
			</div>
		</div>
		<%@include file="navbar-footer.jsp" %>	
	</div>
</body>
</html>

