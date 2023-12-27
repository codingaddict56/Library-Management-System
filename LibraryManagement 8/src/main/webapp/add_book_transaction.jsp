<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="com.entity.User"%>
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
	<title>Add Book Transaction</title>
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
					<p class="mb-4 text-center header-font">Assign Book</p>
		
					
					
					 <%
					    UserDAO dao = new UserDAO(DBConnect.getConn());
						List<User> s = dao.getAlluser();
							
						BookDAO dao1 = new BookDAO(DBConnect.getConn());
						List<Book> b = dao1.getAllBook();
				    %>
								
		
					<form action="booktransactionServlet" method="post">
					
						  <div class="mb-3">
						    <label class="form-label">Select Book</label>
						    <div class="mb-3">
						    <select class="form-select" aria-label="Default select example" name="book">
						   		 <%
							    for(Book b1 : b){
							    %>	
							       <option value="<%= b1.getBookId() %>"><%= b1.getBookName() %></option>
							    <%
							    }
							    %>
						    </select>
						   
						   
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">Select User</label>
						     <div class="mb-3">
						     <select class="form-select" aria-label="Default select example" name="user">
						    <%
						    for(User u : s){
						    %>	
						       <option value="<%= u.getuserId() %>"><%= u.getuserFName() %></option>
						    <%
						    }
						    %>
						    
						    </select>
						   
						  </div>
						    <!-- <input type="text" name="student" class="form-control"> -->
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">Assign Date</label>
						    <input type="date" name="assigneddate" class="form-control">
						  </div>
						  
						  <div class="mb-3">
						    <label class="form-label">Deadline Date</label>
						    <input type="date" name="deadlinedate" class="form-control">
						  </div>
						  
						   <div class="mb-3">
						    <label class="form-label">Number Of Copies</label>
						    <input type="number" value=1 readonly name="unit" class="form-control">
						  </div>
						  
						  
						  <button type="submit" class="btn btn-primary col-md-12">Submit</button>
			</form>
		
		</div>
		</div>
		</div>
				<%@include file="navbar-footer.jsp" %>	
		</div>
	
</body>
</html>