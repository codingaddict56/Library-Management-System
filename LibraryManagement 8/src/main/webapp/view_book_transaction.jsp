<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.BooksTransactionsDAO"%>
<%@page import="com.entity.BooksTransaction"%>
<%@page import="java.util.List"%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>View Book Transactions</title>
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
					<p class="mb-4 text-center header-font">Book Transactions</p>
					<table class="table">
					  <thead>
					    <tr>
					      <th scope="col">Book ID</th>
					      <th scope="col">User ID</th>
					      <th scope="col">Number Of Copies</th>
					      <th scope="col">Assigned Date</th>
					      <th scope="col">Deadline Date</th>
					      <th scope="col">Return Date</th>
					      <th scope="col">Fine Amount</th>
					      <th scope="col" style="text-align: center;">Actions</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  <% 
					  
					  BooksTransactionsDAO dao = new BooksTransactionsDAO(DBConnect.getConn());
					  List<BooksTransaction> list = dao.getAllBookTransaction();
					  for(BooksTransaction b : list){
					  %>
					  
					  
					    <tr>
					      <th scope="row"><%=b.getBook() %></th>
					      <td><%=b.getuser() %></td>
						  <td><%=b.getUnit() %></td>
					      <td><%=b.getAssigneddate() %></td>
					      <td><%=b.getDeadlinedate() %></td>
					      <td><%=b.getReturndate() %></td>
					      <td><%=b.getFine() %></td>
					      <td style="text-align: center;"><a href="edit_book_transaction.jsp?id=<%=b.getId()%>" class="btn btn-sm btn-primary" style="width:100px">Edit</a>
					      
					      </td>
					    </tr>
					    
					     <%
					  }
					  %>
						 
					  </tbody>
					</table>
					<form action="add_book_transaction.jsp" method="post"> 
		          		<input type="submit" class="btn btn-primary" value="Add Book Transaction"/>
		         	</form> 
				</div>
		</div>
	</div>
	<%@include file="navbar-footer.jsp"%>
</div>

</body>
</html>

