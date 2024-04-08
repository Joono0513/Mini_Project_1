package store.DTO;

import java.io.Serializable;

public class Product1 implements Serializable {

	private String filePath;
	private int quantity;

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
