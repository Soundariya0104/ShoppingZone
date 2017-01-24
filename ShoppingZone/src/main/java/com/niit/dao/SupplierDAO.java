package com.niit.dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDAO {

	public boolean addSupplier(Supplier supplier);

	public boolean deleteSupplier(String supplierId);

	public List<Supplier> getSupplierList();
	
	public Supplier getById(String supplierId);
}
