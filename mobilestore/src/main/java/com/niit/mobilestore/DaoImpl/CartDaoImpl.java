package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.CartDao;
import com.niit.mobilestore.Model.Cart;
@Repository("cartDao")
@Transactional
@EnableTransactionManagement
public class CartDaoImpl implements CartDao{

	@Autowired
	SessionFactory sessionFactory;
	public CartDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	@Override
	public boolean saveorupdate(Cart cart) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		return true;
	}
	@Override
	public boolean delete(Cart cart) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(cart);
		return true;
	}
	@Override
	public Cart getCart(String cartId) {
		// TODO Auto-generated method stub
		String car="From Cart where cartId='"+cartId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(car);
		List<Cart> cartlist=(List<Cart>) q.list();
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
	public List<Cart> list() {
		// TODO Auto-generated method stub
		List<Cart> list=(List<Cart>)
				sessionFactory.getCurrentSession().createCriteria(Cart.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}
}
