package com.niit.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "PRODUCT_TABLE")
public class Product implements Serializable { // Serializable is a markup
												// interface, implemented to
												// make model class persist

	@Id
	private String productId;

	@Column(name = "productName")
	private String productName;

	@Column(name = "productDescription")
	private String productDescription;

	@Column(name = "productprice")
	private int productPrice;

	@Column(name = "productquantity")
	private int productQuantity = 1;

	@Column(name = "categoryid")
	private String categoryId;

	@Column(name = "supplierid")
	private String supplierId;

	@ManyToOne
	@JoinColumn(name = "categoryid", updatable = false, insertable = false, nullable = false)
	private Category category;

	@ManyToOne
	@JoinColumn(name = "supplierid", updatable = false, insertable = false, nullable = false)
	private Supplier supplier;

	@Transient
	private MultipartFile image;

	// -------------------------getter setter for
	// images------------------------------

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	// -------------------------getter setter for
	// productDescription------------------------------
	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	// -------------------------getter setter for
	// producName------------------------------
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	// -------------------------getter setter for
	// ProductId------------------------------
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	// -------------------------getter setter for
	// ProductPrice------------------------------
	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	// -------------------------getter setter for
	// cateogyName------------------------------
	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	// -------------------------getter setter for
	// supplierName------------------------------
	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	// -------------------------getter setter for
	// categoryModel------------------------------
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	// -------------------------getter setter for
	// supplier------------------------------

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	/*
	 * public Supplier getSupplierModel() { return supplier; }
	 * 
	 * public void setSupplierModel(Supplier supplier) { this.supplier =
	 * supplier; }
	 */

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

}
