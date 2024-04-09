<%@page import="store.Service.ShoppingCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="store.DTO.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
// 	if (cart == null) {
// 		out.println("장바구니에 상품이 없습니다.");
// 	}
// 	else {
// 		for(Product product : cart.getItems()) {
// 			out.println(product.getName() + "<br/>");
// 		}
// 	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 50%;
	margin: 0;
}

.container {
	text-align: center;
}

table {
	width: 80%;
	margin: 0 auto;
	table-layout: fixed;
}

th, td {
	padding: 8px;
	text-align: center;
	white-space: nowrap;
}

.image-column {
	width: 30%;
}
</style>

</head>
<body>
	<div class="container">
		<h1>장바구니</h1>

		<table border="1">

			<tr>
				<th class="image-column">이미지</th>
				<th>상품명</th>
				<th>개수</th>
				<th>가격</th>
				<th>수량조절</th>
			</tr>

			<%
			if (cart == null || cart.getItems().isEmpty()) {
			%>
			<tr>
				<td colspan="5" align="center">장바구니에 상품이 없습니다.</td>
			</tr>
			<%
			} else {
			for (Product product : cart.getItems()) {
				int totalPrice = product.getCount() * product.getPrice();
			%>
			<tr>
				<td><%=product.getFilePath()%></td>
				<td style="display: none;"><%=product.getProductId()%></td>
				<td><%=product.getName()%></td>
				<td class="item-count"
					data-product-id="<%=product.getProductId()%>"><%=product.getCount()%></td>
				<td class="item-total-price"
					data-product-id="<%=product.getProductId()%>"><%=totalPrice%></td>
					
				<td>
					<button type="button" class="cart-action" data-action="plus"
						data-product-id="<%=product.getProductId()%>">+</button>
					<button type="button" class="cart-action" data-action="minus"
						data-product-id="<%=product.getProductId()%>">-</button>
					<button type="button" class="delete-product" data-product-id="<%= product.getProductId() %>">🗑️</button>
				</td>
			</tr>
			<%
			}
			}
			%>
		</table>

		<jsp:include page="/layout/cart.jsp" />
</body>
</html>




