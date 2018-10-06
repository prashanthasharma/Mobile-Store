package com.niit.mobilestore.Model;

import java.util.List;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Category {
	public Category()
	{
		this.CatId="CAT"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
@Id
private String CatId;
private String CatName;
public String getCatId() {
	return CatId;
}
public void setCatId(String catId) {
	CatId = catId;
}
public String getCatName() {
	return CatName;
}
public void setCatName(String catName) {
	CatName = catName;
}
@OneToMany(mappedBy="category" )
private List<Product> product;
public List<Product> getProduct() {
	return product;
}
public void setProduct(List<Product> product) {
	this.product = product;
}
}
