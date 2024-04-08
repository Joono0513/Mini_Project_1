<!-- 2024-04-03 : 박은서
메인 메뉴 화면 및 메뉴 클릭 시 모달 팝업 -->
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

<!-- 모달을 여는 버튼 -->
<button class="openModalBtn" data-target="myModal">
	<img src="static/img/noodle.jpg" alt="food_img1">
	<div class= "item_tit">
	  <div class="badge"> </div>
	    <h3>함흥냉면</h3>
	    </div>
	<p>8,500원</p>
</button>

<!-- 모달 구조 -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="closeBtn">&times;</span>
        <p>이곳에 모달 내용이 표시됩니다!</p>
        <hr>
        <p>모달 냉면 내용.</p>
        <!-- 여러 줄의 내용이 여기에 추가될 수 있습니다 -->
        <button class="submit">추가하기</button>
    </div>
</div>

<!-- 모달을 여는 두 번째 버튼 -->
<button class="openModalBtn" data-target="myModal">
	<img src="static/img/spicy_noodle.jpg" alt="food_img2">
	<div class= "item_tit">
	  <div class="badge"> </div>
	 <h3>비빔냉면</h3>
	</div>
	<p>9,500원</p>
</button>


<!-- 두 번째 모달 구조 -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="closeBtn">&times;</span>
        <p>이곳에 모달 내용이 표시됩니다!</p>
        <p>이곳에 모달 내용이 표시됩니다!</p>
        <hr>
        <p>비빔 냉면 내용.</p>
        <!-- 내용 추가 -->
        <button class="submit">추가하기</button>
    </div>
</div>

<!-- 모달을 여는 세 번째 버튼 -->
<button class="openModalBtn" data-target="myModal">
	<img src="static/img/southKorea_noodle.jpg" alt="food_img3">
	<div class= "item_tit">
	  <div class="badge"> </div>
	    <h3>평양냉면</h3>
	    </div>
	<p>9,500원</p>
</button>


<!-- 세 번째 모달 구조 -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="closeBtn">&times;</span>
        <p>이곳에 모달 내용이 표시됩니다!</p>
        <hr>
        <p>시~ㅂ말</p>
        <p>세번째 평양 냉면 내용.</p>
        <!-- 내용 추가 -->
        <button class="submit">추가하기</button>
    </div>
</div>
<script src="static/js/modal.js"></script> <!-- JavaScript 파일 참조 -->

</body>
</html>
    
