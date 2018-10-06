package com.niit.mobilestore.Dao;

import java.util.List;

import com.niit.mobilestore.Model.CartItems;
import com.niit.mobilestore.Model.Shipping;

public interface ShippingDao {

	public boolean saveorupdate(Shipping shipping);
	public boolean delete(Shipping shipping);
	public Shipping getShipping(String shippingId);
	public List<Shipping> list();
	public List<Shipping> getaddbyuser(String userId);
}
