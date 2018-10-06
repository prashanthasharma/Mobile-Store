package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.PayDao;
import com.niit.mobilestore.Model.Authentication;
import com.niit.mobilestore.Model.Card;
import com.niit.mobilestore.Model.Pay;

@Repository("PayDao")
@Transactional
@EnableTransactionManagement
public class PayDaoImpl implements PayDao{

	@Autowired
	SessionFactory sessionFactory;
	public PayDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	@Override
	public boolean saveorupdate(Pay pay) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(pay);
		return true;
	}
	@Override
	public boolean delete(Pay pay) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(pay);
		return true;
	}
	@Override
	public Pay getPay(String PayId) {
		// TODO Auto-generated method stub
		String pay="From Pay where PayId='"+PayId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(pay);
		List<Pay> paylist=(List<Pay>) q.list();
		if(paylist==null||paylist.isEmpty())
		{
		return null;

		}
		else
		{
			return paylist.get(0);
		
		}
	}
	@Override
	public List<Pay> list() {
		// TODO Auto-generated method stub
		List<Pay> list=(List<Pay>)
				sessionFactory.getCurrentSession().createCriteria(Authentication.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

}
