package com.niit.mobilestore.Model;

import java.util.List;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Cart {
	public Cart()
	{
		this.cartId="CART"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	@Id
	private String cartId;
	private double grandTotal=0.0;
	private int totalPrice=0;
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	@OneToMany(mappedBy="cart")
	private List<CartItems> cartItems;
	public List<CartItems> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItems> cartItems) {
		this.cartItems = cartItems;
	}

	
	
//	@OneToOne
//	@JoinColumn(name="billingId")
//	private Billing billing;
//	public Billing getBilling() {
//		return billing;
//	}
//	public void setBilling(Billing billing) {
//		this.billing = billing;
//	}
}
