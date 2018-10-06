package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.CartItemsDao;
import com.niit.mobilestore.Model.CartItems;

@Repository("cartItemsDao")
@Transactional
@EnableTransactionManagement
public class CartItemsDaoImpl implements CartItemsDao {

	@Autowired
	SessionFactory sessionFactory;
	public CartItemsDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	@Override
	public boolean saveorupdate(CartItems cartitems) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cartitems);
		return true;
	}
	@Override
	public boolean delete(CartItems cartitems) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(cartitems);
		return true;
	}
	@Override
	public CartItems getCartItems(String cartitemsId) {
		// TODO Auto-generated method stub
		String car="From CartItems where cartItemId='"+cartitemsId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(car);
		List<CartItems> cartlist=(List<CartItems>) q.list();
		if(cartlist==null||cartlist.isEmpty())
		{
		return null;
		}
		else
		{
			return cartlist.get(0);
		
		}
	}
	@Override
	public List<CartItems> list() {
		// TODO Auto-generated method stub
		List<CartItems> list=(List<CartItems>)
				sessionFactory.getCurrentSession().createCriteria(CartItems.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}
	@Override
	public List<CartItems> getlist(String cartId) {
		// TODO Auto-generated method stub
				String car="From CartItems where cartId='"+cartId+"'";
				Query q=sessionFactory.getCurrentSession().createQuery(car);
				List<CartItems> cartlist=(List<CartItems>) q.list();
				if(cartlist==null||cartlist.isEmpty())
				{
				return null;
				}
				else
				{
					return cartlist;
				
				}

	}
	@Override
	public CartItems get(String cartId) {
		String car="From CartItems where cartId='"+cartId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(car);
		List<CartItems> cartlist=(List<CartItems>) q.list();
		if(cartlist==null||cartlist.isEmpty())
		{
		return null;
		}
		else
		{
			return cartlist.get(0);
		
		}
	}
	@Override
	public CartItems getlistall(String cartId, String prodId) {
		String sq1="From CartItems where cartId='"+cartId+"'and ProdId='" +prodId+ "'";
		Query q1=sessionFactory.getCurrentSession().createQuery(sq1);
		@SuppressWarnings("unchecked")
		List<CartItems> cartlist=(List<CartItems>) q1.list();
		if(cartlist==null||cartlist.isEmpty())
		{
			System.out.println("Item not found");
		return null;
		}
		else
		{
			return cartlist.get(0);
		
		}
	}
	@Override
	public boolean deleteCartItems(String cartItemId) {
		CartItems ci= new CartItems();
		ci.setCartItemId(cartItemId);
		sessionFactory.getCurrentSession().delete(ci);
		return true;
	}
}
