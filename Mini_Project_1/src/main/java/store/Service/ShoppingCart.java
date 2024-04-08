package store.Service;

import java.util.ArrayList;
import java.util.List;

import store.DTO.Product;

public class ShoppingCart {
    private List<Product> items;

    public ShoppingCart() {
        items = new ArrayList<>();
    }

    public void addItem(Product item) {
    	if( !items.isEmpty() ) {
    		for (int i = 0; i < items.size(); i++) {
				Product product = items.get(i);
				if( item.getProductId().equals(product.getProductId() ) ) {
					int currentCount = product.getCount(); 
					product.setCount( currentCount + item.getCount() );
					return;
				}
			}
    	}
		items.add(item);
    }

    public List<Product> getItems() {
        return items;
    }
}