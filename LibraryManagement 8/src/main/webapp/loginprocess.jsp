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
	<title>Login</title>
	<%@include file="all_css.jsp" %>
	<%@include file="navbarlogin.jsp" %>
</head>

<body>
	<div class="bg-image col-md-12">
		<%@include file="dynamic_icons.jsp" %>
		<div class="container p-6">
			<div style="height:200px"></div>
			<div class="library-card">
				<div class="card-body" >
					<p class="mb-4 text-center header-font">LOGIN</p>
					<div style="height:50px"></div>
					<form action="loginServlet" method="post" >
			 			<div class="mb-3">
				    		<label class="form-label">Email</label>
			   			    <input type="email" name="email" class="form-control">
			  			</div>
					  	<div class="mb-3">
						    <label class="form-label">Password</label>
						    <input type="password" name="pass" class="form-control">
					  	</div>
					  	<div class="w-50">
							<label class="checkbox-wrap checkbox-primary">Remember Me
								<input type="checkbox" checked="">
								<span class="checkmark"></span>
							</label>
						</div>
						<button type="submit" class="btn btn-primary col-md-12">Login</button>
					</form>
					
					<div style="height:70px"></div>
					<p class="w-100 text-center">— Or —</p>
					<div style="height:50px"></div>
					<div class="container">
					    <div class="col"><a href="forgot_password.jsp" class="btn btn-warning col-md-12" role="button" aria-pressed="true">Reset Password</a></div>
					</div>
					<div style="height:50px"></div>
				</div>
			</div>
		</div>
		<%@include file="navbar-footer.jsp" %>
	</div>
</body>
</html>
