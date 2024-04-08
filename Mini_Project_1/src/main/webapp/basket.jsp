<%@page import="store.Service.ShoppingCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="store.DTO.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            width: 100%;
        }
    </style>
    
</head>
<body>
    <div class="container">
        <h1>장바구니</h1>
    
    <table border="1">
    
    	<tr>
    		<th>이미지</th>
    		<th>상품아이디</th>
    		<th>상품명</th>
    		<th>개수</th>
    		<th>가격</th>
    	</tr>
    	
	    <%  if( cart == null )  { %>
	    	<tr>
				<td colspan="5" align="center">
					장바구니에 상품이 없습니다.	
				</td>	    	
	    	</tr>
	    <%  }
	    	else {
	    		for(Product product : cart.getItems()) {
	    %>
	    			<tr>
	    				<td><%= product.getFilePath() %></td>
	    				<td><%= product.getProductId() %></td>
	    				<td><%= product.getName() %></td>
	    				<td><%= product.getCount() %></td>
	    				<td><%= product.getPrice() %></td>
	    			</tr>
	    	
	    <%		
	    		}
	    	}
	    %>
    </table>
</body>
</html>




