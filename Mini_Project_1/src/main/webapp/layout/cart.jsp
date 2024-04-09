<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- booststrap -->
<script src="<%= request.getContextPath() %>/static/js/bootstrap.bundle.min.js" ></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- js -->
<%-- <script src="<%= request.getContextPath() %>/static/js/modal.js"></script> <!-- JavaScript 파일 참조 --> --%>
<script src="<%= request.getContextPath() %>/static/js/script.js"></script>

<script>
		
		// 장바구니에서 수량조절(+, -) 버튼 클릭
		document.addEventListener('DOMContentLoaded', function() {
    		document.querySelectorAll('.cart-action').forEach(function(button) {
        		button.addEventListener('click', function() {
		            var action = this.getAttribute('data-action');
		            var productId = this.getAttribute('data-product-id');
		            var itemCountElement = document.querySelector('td.item-count[data-product-id="' + productId + '"]');
		            var itemTotalPriceElement = document.querySelector('td.item-total-price[data-product-id="' + productId + '"]');
		            var itemCount = parseInt(itemCountElement.textContent);
		            var itemTotalPrice = parseFloat(itemTotalPriceElement.textContent);
		            var originalPrice = itemTotalPrice / itemCount;
            
            if (action === 'plus') {
                itemCount++;
                itemTotalPrice += originalPrice;
            } else if (action === 'minus' && itemCount > 1) {
                itemCount--;
                itemTotalPrice -= originalPrice;
            }
            itemCountElement.textContent = itemCount;
            itemTotalPriceElement.textContent = Math.round(itemTotalPrice);
        		});
    		});

	    document.querySelectorAll('.item-total-price').forEach(function(itemTotalPriceElement) {
	        var itemTotalPrice = parseFloat(itemTotalPriceElement.textContent);
	        itemTotalPriceElement.textContent = Math.round(itemTotalPrice);
	    });
			});
		
		// 장바구니에서 휴지통 버튼 눌러서 삭제
		document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('.delete-product').forEach(function(button) {
            button.addEventListener('click', function() {
                var productId = this.getAttribute('data-product-id');
                
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/delete-product', true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.onload = function() {
                    if (xhr.status === 200) {
                        var productRow = button.parentElement.parentElement;
                        productRow.parentNode.removeChild(productRow);
                        
                        var updatedCart = JSON.parse(xhr.responseText);
                        sessionStorage.setItem('cart', JSON.stringify(updatedCart));
                    }
                };
                if (productId !== null && productId !== undefined) {
                    xhr.send(JSON.stringify({ productId: productId }));
                } else {
                    console.error('productId is null or undefined');
                }
            });
        });
    });

</script>