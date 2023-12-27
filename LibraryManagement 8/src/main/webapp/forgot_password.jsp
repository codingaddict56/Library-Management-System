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
	<title>Forgot Password</title>
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
					<p class="text-center fs-3 "> Reset Password </p>
					<form action="reset_password_process.jsp" method="post"> 
						<div class="form-group mb-3">
							<input type="email" class="form-control" placeholder="Email" required="">
						</div>
						<div class="form-group mb-3">
							<input id="password-field" type="password" class="form-control" placeholder="Enter New Password" required="">
						</div>
						<div class="form-group mb-3">
							<input id="password-field" type="password" class="form-control" placeholder="Confirm New Password" required="">
						</div>
						<p class="text-center">
							<input type="submit" class="btn btn-success col-md-4" value="Confirm"/> 
						</p>
					</form>
					</br>
				</div>
			</div>
		</div>
			<%@include file="navbar-footer.jsp" %>	
	</div>
</body>
</html>

