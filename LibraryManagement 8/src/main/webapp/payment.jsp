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
	<title>Online Fine Payment</title>
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
					<div class="tab-pane fade active show" id="pills-genarel" role="tabpanel" aria-labelledby="pills-genarel-tab">
						<div class="row d-flex justify-content-center py-5">
						      <div class="col-md-7 col-lg-5 col-xl-4">
						        <div class="card" style="border-radius: 15px;">
						          <div class="card-body p-4">
						            <form>
						              <div class="d-flex justify-content-between align-items-center mb-3">
						                <div class="form-outline">
						                  <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
						                    placeholder="1234 5678 9012 3457" minlength="19" maxlength="19" />
						                  <label class="form-label" for="typeText">Card Number</label>
						                </div>
						                <img src="https://img.icons8.com/color/48/000000/visa.png" alt="visa" width="64px" />
						              </div>
						
						              <div class="d-flex justify-content-between align-items-center mb-4">
						                <div class="form-outline">
						                  <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
						                    placeholder="Cardholder's Name" />
						                  <label class="form-label" for="typeName">Cardholder's Name</label>
						                </div>
						              </div>
						
						              <div class="d-flex justify-content-between align-items-center pb-2">
						                <div class="form-outline">
						                  <input type="text" id="typeExp" class="form-control form-control-lg" placeholder="MM/YYYY"
						                    size="7" id="exp" minlength="7" maxlength="7" />
						                  <label class="form-label" for="typeExp">Expiration</label>
						                </div>
						                <div class="form-outline">
						                  <input type="password" id="typeText2" class="form-control form-control-lg"
						                    placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />
						                  <label class="form-label" for="typeText2">Cvv</label>
						                </div>
						                <button type="button" class="btn btn-info btn-lg btn-rounded">
						                  <i class="fas fa-arrow-right"></i>
						                </button>
						              </div>
						            </form>
						          </div>
						        </div>
						      </div>
						    </div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="navbar-footer.jsp" %>	
	</div>
</body>
</html>

