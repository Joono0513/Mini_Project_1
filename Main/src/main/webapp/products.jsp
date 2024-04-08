<%@page import="store.DTO.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="store.DTO.Product"%>
<jsp:useBean id="productDAO" class="store.DAO.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
			for (int i = 0; i < listOfProducts.size(); i++) {
				Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="/layout/footer.jsp" />
</body>
</html>