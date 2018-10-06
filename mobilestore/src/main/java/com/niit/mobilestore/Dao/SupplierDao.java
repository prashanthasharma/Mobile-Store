package com.niit.mobilestore.Dao;

import java.util.List;

import com.niit.mobilestore.Model.Supplier;

public interface SupplierDao {

		public boolean saveorupdate(Supplier supplier);
		public boolean delete(Supplier supplier);
		public Supplier getSupplier(String SupId);
		public List<Supplier> list();
	}
