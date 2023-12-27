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
	<title>FAQ</title>
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
					<p class="mb-4 text-center header-font">FAQ</p>
					<div style="height:70px"></div>
					<div class="row g-4" style="background-color:rgba(118, 196, 213, 0.35)">
						<div style="height:50px"></div>
						<div class="col-lg-6" style="text-align: center; ">
							<h5>How can I reserve a book?</h5>
							<p class="text-muted">After logging in, search for the desired book and select "Reserve".</p>
						</div>
						<div class="col-lg-6" style="text-align: center">
							<h5>How long can I reserve a book?</h5>
							<p class="text-muted">For 10 days.</p>
						</div>
						<div style="height:50px"></div>
						<div class="col-lg-6" style="text-align: center">
							<h5>What is the fine per exceeded day?</h5>
							<p class="text-muted">1 euro will be charged per exceeded day.</p>
						</div>
						<div class="col-lg-6" style="text-align: center">
							<h5>What time is the library open?</h5>
							<p class="text-muted">Monday to Friday from 9:00 AM to 5:00 PM</p>
						</div>
						<div style="height:50px"></div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="navbar-footer.jsp" %>	
	</div>
</body>
</html>

