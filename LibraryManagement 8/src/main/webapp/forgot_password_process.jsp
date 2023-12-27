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
		<div class="container p-4">
			<div style="height:200px"></div>
			<div class="library-card">
				<div class="card-body" >
					<h3 class="mb-4 text-center">Update Password Process...</h3>
					<div class="col-md-12 text-center">
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

