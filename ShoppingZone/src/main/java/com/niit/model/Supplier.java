package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SUPPLIER")
public class Supplier {
	@Id
	@Column(name = "supplierid")
	private String supplierId;
	@Column(name = "suppliername")
	private String supplierName;
	@Column(name = "supplierdetails")
	private String supplierDetails;

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierDetails() {
		return supplierDetails;
	}

	public void setSupplierDetails(String supplierDetails) {
		this.supplierDetails = supplierDetails;
	}
}
