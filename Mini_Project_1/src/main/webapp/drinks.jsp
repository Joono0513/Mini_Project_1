<!-- 2024-04-03 : 박은서
메인 메뉴 화면 및 메뉴 클릭 시 모달 팝업 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="store.DTO.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ include file="layout/footer.jsp" %>
<%@ include file="layout/footer2.jsp" %>


<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>주문 화면</title>
    <!-- 이정용 : style.css 파일에 모달화면 css를 홍콩반점과 같이 꾸며주세요. -->
    <link rel="stylesheet" href="static/css/style.css"> 
    
</head>
<body>
<%
	List<Product> productList = new ArrayList<Product>();
	
	Product product1 = new Product("P0007", "콜라", 3000, 1, "/static/img/coke.jpg");
	Product product2 = new Product("P0008", "스프라이트", 3000, 1, "/static/img/sprite.jpg");
	Product product3 = new Product("P0009", "소주", 5000, 1, "/static/img/soju.jpg");
	Product product4 = new Product("P0010", "맥주", 5000, 1, "/static/img/cass.jpg");
	
	productList.add(product1);
	productList.add(product2);
	productList.add(product3);
	productList.add(product4);
	
%>

<!-- 모달을 여는 버튼 -->
<div>
	<c:forEach var="product" items="<%= productList %>">
		<div class="product-item" id="${ product.productId }">
			<input type="hidden" name="count" value="${ product.count }" />
	   		<img src="<%= request.getContextPath() %>${ product.filePath }" width="200" alt="food_img1">
			<h4>${ product.name }</h4>
			<h3>${ product.price }</h4>
		</div>
   	</c:forEach>
</div>
<!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div class="modal-content">
	    <div class="modal-header">
	      <span class="closeBtn">&times;</span>
	    </div>
	    <div class="modal-body">
	    <div class="menu">
	    	<span id="detail-product-id" style="display: none;"></span>
	    	<div id="detail-img-box">
	    		
	    	</div>
<%--             <img src="<%= request.getContextPath() %>${ product.filePath }" alt="food_img1" class="room_img"> --%>

            <h4 id="product-detail-name"></h4>
            <h4 id="product-detail-price"></h4>
            <button type="button" id="detail-minus">-</button>
            <input type="text" name="" value="0" id="detail-count" onkeydown="return false;">
            <button type="button" id="detail-plus">+</button>
	    </div>
	    </div>
	    <div class="modal-footer">
    <div class="pop-btn confirm" id="cancel">취소하기</div>
    <div class="pop-btn confirm" id="confirm">추가하기</div>
	</div>
	  </div>
	
	</div>
	<jsp:include page="/layout/script.jsp" />

</body>
</html>