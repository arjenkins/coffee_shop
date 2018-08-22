package co.grandcircus.coffeeshop.coffeeshop;

import java.io.Serializable;

public class Items implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	private String description;
	private Integer quantity;
	private Float price;
	
	public Items() {
		
	}

	public Items(Long id, String name, String description, Integer quantity, Float price) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.quantity = quantity;
		this.price = price;
	}
	
	public Long getId() {
		return id;
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Float getPrice() {
		return price;
	}
	
	public void setId(Long id) {
		this.id = id;
	}

	public void setPrice(Float price) {
		this.price = price;
	}
	
	
	
}
