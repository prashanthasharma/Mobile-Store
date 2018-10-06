package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.OrderItemsDao;
import com.niit.mobilestore.Model.OrderItems;

@Repository("orderItemsDao")
@Transactional
@EnableTransactionManagement
public class OrderItemsDaoImpl implements OrderItemsDao{

	@Autowired
	SessionFactory sessionFactory;
	public OrderItemsDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	@Override
	public boolean saveorupdate(OrderItems orderitems) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(orderitems);
		return true;
	}
	@Override
	public boolean delete(OrderItems orderitems) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(orderitems);
		return true;
	}
	@Override
	public OrderItems getOrderItems(String orderitemsId) {
		// TODO Auto-generated method stub
		String ordi="From OrderItems where orderItemsId='"+orderitemsId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(ordi);
		List<OrderItems> ordlist=(List<OrderItems>) q.list();
		if(ordlist==null||ordlist.isEmpty())
		{
		return null;
		}
		else
		{
			return ordlist.get(0);
		
		}
	}
	@Override
	public List<OrderItems> list() {
		// TODO Auto-generated method stub
		List<OrderItems> list=(List<OrderItems>)
				sessionFactory.getCurrentSession().createCriteria(OrderItems.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

}
