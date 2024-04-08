import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import store.DTO.Product;
import store.Service.ShoppingCart;

import java.io.IOException;

@WebServlet("/addToCartServlet")
public class addToCartServlet extends HttpServlet {
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 클라이언트로부터 받은 상품 정보 추출
    	String productId = request.getParameter("productId");
        String productName = request.getParameter("productName");
        int count = Integer.parseInt(request.getParameter("count"));
        int price = Integer.parseInt(request.getParameter("price"));
        String filePath = request.getParameter("filePath");
        
        
        System.out.println("상품명아이디 : " + productId);
        System.out.println("상품명 : " + productName);
        System.out.println("개수 : " + count);
        System.out.println("가격 : " + price);
        

        // 세션을 가져오거나 생성
        HttpSession session = request.getSession(true);

        // 장바구니에 상품 정보 저장
        Product item = new Product(productId, productName, price, count, filePath);
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        
        if (cart == null) {
            cart = new ShoppingCart();
            // cart 라는 이름으로 세션에 장바구니(cart) 저장
            session.setAttribute("cart", cart);
        }
        cart.addItem(item);

        // 성공 응답 보내기 (선택 사항)
        response.getWriter().write("상품이 장바구니에 추가되었습니다.");
    }
    
}
