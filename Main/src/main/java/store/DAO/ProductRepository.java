package store.DAO;

import java.util.ArrayList;

import store.DTO.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		Product noodle = new Product("P0001", "물냉3", 8000, 1, "/img/물냉.jpg");	
		Product noodle2 = new Product("P0002", "비냉1", 9000, 1, "/img/비냉.jpg");
		Product noodle3 = new Product("P0003", "평냉", 10000, 1, "/img/평냉.jpg");
		Product noodle4 = new Product("P0004", "밥", 1000, 1, "/img/공깃밥.jpg");
		
		listOfProducts.add(noodle);
		listOfProducts.add(noodle2);
		listOfProducts.add(noodle3);
		listOfProducts.add(noodle4);
	}
		public ArrayList<Product> getAllProducts() {
			return listOfProducts;
	}
}
