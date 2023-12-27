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
	<title>Admin</title>
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
					<p class="mb-4 text-center header-font">Admin Actions</p>
					<div style="height:50px"></div>
					<a href="index.jsp" class="btn btn-success col-md-12" role="button" aria-pressed="true" >View All Books</a><div style="height:50px"></div>
					<a href="view_user.jsp" class="btn btn-primary col-md-12" role="button" aria-pressed="true" >View All Users</a><div style="height:50px"></div>
					<!-- <a href="view_faculty.jsp" class="btn btn-warning col-md-12" role="button" aria-pressed="true" >View All Faculty</a><div style="height:50px"></div> -->
					<a href="view_book_transaction.jsp" class="btn btn-warning col-md-12" role="button" aria-pressed="true" >View Book Transactions</a><div style="height:50px"></div>
					<a href="payment.jsp" class="btn btn-danger col-md-12" role="button" aria-pressed="true" >Pay Fines</a><div style="height:50px"></div>
				</div>
			</div>
		</div>
		<%@include file="navbar-footer.jsp" %>	
	</div>
</body>
</html>

