package com.niit.mobilestore.Model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table
@Component
public class Product {
	@Id
	private String ProdId;
	private String ProdName;
	private Double Price;
	private String Description;
	private int Quantity;
	private String imageName;
	@Transient
	private MultipartFile pimg;
	
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public MultipartFile getPimg() {
		return pimg;
	}
	public void setPimg(MultipartFile pimg) {
		this.pimg = pimg;
	}
	public String getProdId() {
		return ProdId;
	}
	public void setProdId(String prodId) {
		ProdId = prodId;
	}
	public String getProdName() {
		return ProdName;
	}
	public void setProdName(String prodName) {
		ProdName = prodName;
	}
	public Double getPrice() {
		return Price;
	}
	public void setPrice(Double price) {
		Price = price;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	@ManyToOne
	@JoinColumn(name="CatId")
	private Category category;
	public Category getCategory() {
		return category;
	}
	public Product()
	{
		this.ProdId="PROD"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	@ManyToOne
	@JoinColumn(name="SupId")
	private Supplier supplier;
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
}
