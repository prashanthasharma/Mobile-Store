package com.niit.mobilestore.Dao;

import java.util.List;

import com.niit.mobilestore.Model.Billing;
import com.niit.mobilestore.Model.CartItems;

public interface CartItemsDao {

	public boolean saveorupdate(CartItems cartitems);
	public boolean delete(CartItems cartitems);
	public CartItems getCartItems(String cartitemsId);
	public List<CartItems> list();
	public List<CartItems> getlist(String CartId);
	public CartItems get(String cartId);
	public CartItems getlistall(String cartId, String prodId);
	public boolean deleteCartItems(String cartItemId);
	}
