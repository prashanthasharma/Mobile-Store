package com.niit.mobilestore.Dao;

import java.util.List;

import com.niit.mobilestore.Model.Category;
import com.niit.mobilestore.Model.Product;

public interface ProductDao {
	public boolean saveorupdate(Product product);
	public boolean delete(Product product);
	public Product getProduct(String ProdId);
	public List<Product> getProductByCategory(String CatId);
	public List<Product> getProductBySupplier(String SupId);
	public List<Product> list();
}
