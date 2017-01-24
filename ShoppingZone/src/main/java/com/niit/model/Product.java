package com.niit.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "PRODUCT_TABLE")
public class Product implements Serializable {
	
	
	@Id
	@Column(name = "productId")
	private String productId;
	
	@Column(name = "productName")
	private String productName;
	
	@Column(name = "productDescription")
	private String productDescription;
	
	@Column(name = "productprice")
	private String productPrice;
	
	@ManyToOne
    @JoinColumn(name = "categoryId", updatable = false, insertable = false, nullable = false)
	private Category category;

	@ManyToOne
    @JoinColumn(name = "supplierId", updatable = false, insertable = false, nullable = false)
	private Supplier suppplier;

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public Category getCategoryId() {
	    	return category;
	}

	public void setCategoryId(Category category) {
	    	this.category = category;
	}

	public Supplier getSupplierId() {
	    	return suppplier;
	}

	public void setSuppplierId(Supplier suppplier) {
	    	this.suppplier = suppplier;
	}
}
