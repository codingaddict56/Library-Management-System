<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit User</title>
	<%@include file="all_css.jsp" %>
	<%@include file="navbar.jsp" %>
</head>
<body class="bg-light">
	<div class="bg-image col-md-12">
	<%@include file="dynamic_icons.jsp" %>
		<div class="container p-4">
			<div style="height:200px"></div>
			<div class="library-card">
				<div class="col-md-12" style="text-align:right;">
					<input type="submit" class="btn btn-secondary" onclick="history.back()" value="Go Back"/>
				</div>
				<div class="card-body" >
					<p class="mb-4 text-center header-font">Edit User</p>
		
			<%
					int userId=Integer.parseInt(request.getParameter("userId"));
									UserDAO dao = new UserDAO(DBConnect.getConn());
									User s =dao.getuserById(userId);
					%>
		
		<form action="updateuser" method="post">
		
			 <%--  <div class="mb-3">
			    <label class="form-label">User ID</label>
			    <input readonly type="text" value="<%=s.getuserId()%>" name="userId" class="form-control">
			  </div> --%>
			  
			  <div class="mb-3">
			    <label class="form-label">First Name</label>
			    <input type="text" value="<%=s.getuserFName()%>"  name="userFName" class="form-control">
			  </div>
			  
			  <div class="mb-3">
			    <label class="form-label">Last Name</label>
			    <input type="text" value="<%=s.getuserLName()%>"  name="userLName" class="form-control">
			  </div>
			  
			  <div class="mb-3">
			    <label class="form-label">Email Address</label>
			    <input type="text" value="<%=s.getuserEmailId()%>"  name="userEmailId" class="form-control">
			  </div>
			  
			  <div class="mb-3">
			    <label class="form-label">Course</label>
			    <input type="text" value="<%=s.getCourse()%>"  name="course" class="form-control">
			  </div>
			  
			   <div class="mb-3">
			    <label class="form-label">User Type</label>
			     <select class="form-select"  name="type" aria-label="Default select example">
				  <option value="user" <%= s.getType().equals("user") ? "selected" : "" %> >User</option>
				  <option value="faculty" <%= s.getType().equals("faculty") ? "selected" : "" %>>Faculty</option>
				   <option value="attendant" <%= s.getType().equals("attendant") ? "selected" : "" %>  >Attendant</option>
				</select>
			  </div>
			  
			   <div class="mb-3">
			    <label class="form-label">User Role</label>
			     <select class="form-select" name="role" aria-label="Default select example">
				  <option value="user" <%= s.getRole().equals("user") ? "selected" : "" %>>User</option>
				  <option value="admin" <%= s.getRole().equals("admin") ? "selected" : "" %>>Admin</option>
				  
				</select>
			  </div>
			  
			
			  
			  <div class="mb-3">
			    <label class="form-label">User Password</label>
			    <input type="password" value="<%=s.getuserPassword()%>"  name="userPassword" class="form-control">
			  </div>
			  
			  
			  <input type="hidden" name="userId" value="<%=s.getuserId()%>" >
			  
			  <button type="submit" class="btn btn-primary col-md-12">Update</button>
			</form>
		
		</div>
		</div>
		</div>
		<%@include file="navbar-footer.jsp" %>	
		</div>
	
</body>
</html>