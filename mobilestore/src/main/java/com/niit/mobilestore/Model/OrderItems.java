package com.niit.mobilestore.Model;

import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class OrderItems {
	public OrderItems()
	{
		this.orderItemsId="ORDERITEMS"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	@Id
	private String orderItemsId;
	private String productId;
	public String getOrderItemsId() {
		return orderItemsId;
	}
	public void setOrderItemsId(String orderItemsId) {
		this.orderItemsId = orderItemsId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="orderId")
	private Order order;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
}
