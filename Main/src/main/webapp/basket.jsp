<!-- 2024.04.03 박은서
화면 하단 푸터 사용 안내 jsp 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ include file="layout/footer.jsp" %>
<%@ include file="layout/footer2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta charset="UTF-8">
<link rel="stylesheet" href="static/css/style.css"> 
<title>장바구니</title>
</head>
<body>

    <header class="main-header">
        <h1>주문내역</h1>
    </header>
<%
   String table_num = "1";
   String coke = "2,000";
%>    
    
<div class="basket">
 <h1 class="subtitle"><%= table_num %> 번 테이블 주문서</h2>
  <div class="menu-item">
    <img src="static/img/coke.jpg" alt="콜라" />
    <div class="menu-description">
      <h3>콜라</h3>
      <p>1개</p>
      <p> <%= coke %> 원</p>
    </div>
  </div>
</div>

<div class="menu-item">
    <img src="static/img/sprite.jpg" alt="스프라이트" />
    <div class="menu-description">
      <h3>스트라이트</h3>
      <p>1개</p>
      <p> <%= price %> 원 </p>
    </div>
  </div>
  <!-- 여기에 더 많은 메뉴 아이템을 추가할 수 있습니다. -->
</div>
	
</body>
</html>
