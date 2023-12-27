<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Users</title>
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
				<p class="mb-4 text-center header-font">Users</p>
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">User ID</th>
				      <th scope="col">First Name</th>
				      <th scope="col">Last Name</th>
				      <th scope="col">Email Address</th>
				      <th scope="col">Course</th>
				      <th scope="col">User Type</th>
				      <th scope="col">User Role</th>
				      <th scope="col" style="text-align: center;">Actions</th>
				    </tr>
				  </thead>
				  <tbody>
				  
				  <%
	  			  UserDAO dao = new UserDAO(DBConnect.getConn());
	  			  	  			  	  List<User> list = dao.getAlluser();
	  			  	  			  	  for(User s : list){
	  			  %>
	
				    <tr>
				      <th scope="row"><%=s.getuserId() %></th>
				      <td><%=s.getuserFName() %></td>
					  <td><%=s.getuserLName() %></td>
				      <td><%=s.getuserEmailId() %></td>
				       <td><%=s.getCourse() %></td>
				       <td><%=s.getType() %></td>
				       <td><%=s.getRole() %></td>
				      <td style="text-align: center;"><a href="edit_user.jsp?userId=<%=s.getuserId()%>" class="btn btn-sm btn-primary" style="width:100px">Edit</a>
				      <a href="deleteuser?userId=<%=s.getuserId()%>" class="btn btn-sm btn-danger ms-1" style="width:100px">Delete</a>
				      </td>
				    </tr>
				    
				     <%
				  }
				  %>
					 
				  </tbody>
				</table>
				<form action="add_user.jsp" method="post"> 
	          		<input type="submit" class="btn btn-primary" value="Add User"/>
	         	</form> 
			</div>
		</div>
	</div>
	<%@include file="navbar-footer.jsp" %>	
</div>

</body>
</html>