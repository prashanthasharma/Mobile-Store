package com.niit.mobilestore.Dao;

import java.util.List;

import com.niit.mobilestore.Model.Card;

public interface CardDao {
	public boolean saveorupdate(Card card);
	public boolean delete(Card card);
	public Card getCard(String cardNumber);
	public List<Card> list();
}
