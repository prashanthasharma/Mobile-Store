package com.niit.mobilestore.Dao;

import java.util.List;

import com.niit.mobilestore.Model.OrderItems;

public interface OrderItemsDao {

	public boolean saveorupdate(OrderItems orderitems);
	public boolean delete(OrderItems orderitems);
	public OrderItems getOrderItems(String orderitemsId);
	public List<OrderItems> list();
}
