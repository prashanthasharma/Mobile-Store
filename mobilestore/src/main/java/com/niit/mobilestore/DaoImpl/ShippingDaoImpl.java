package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.ShippingDao;
import com.niit.mobilestore.Model.Shipping;

@Repository("shippingDao")
@Transactional
@EnableTransactionManagement
public class ShippingDaoImpl implements ShippingDao {

	@Autowired
	SessionFactory sessionFactory;
	public ShippingDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	@Override
	public boolean saveorupdate(Shipping shipping) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(shipping);
		return true;
	}
	@Override
	public boolean delete(Shipping shipping) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(shipping);
		return true;
	}
	@Override
	public Shipping getShipping(String shippingId) {
		// TODO Auto-generated method stub
		String cat="From Shipping where shipId='"+shippingId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(cat);
		List<Shipping> shiplist=(List<Shipping>) q.list();
		if(shiplist==null||shiplist.isEmpty())
		{
		return null;
		}

		else
		{
			return shiplist.get(0);
		
		}
	}
	@Override
	public List<Shipping> list() {
		// TODO Auto-generated method stub
		List<Shipping> list=(List<Shipping>)
				sessionFactory.getCurrentSession().createCriteria(Shipping.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}
	@Override
	public List<Shipping> getaddbyuser(String userId) {
		String cat="From Shipping where UserId='"+userId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(cat);
		List<Shipping> shiplist=(List<Shipping>) q.list();
		if(shiplist==null||shiplist.isEmpty())
		{
		return null;
		}

		else
		{
			return shiplist;
		
		}
	}

}
