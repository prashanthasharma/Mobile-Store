package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.SupplierDao;
import com.niit.mobilestore.Model.Supplier;

@Repository("supplierDao")
@Transactional
@EnableTransactionManagement
public class SupplierDaoImpl implements SupplierDao{

	@Autowired
	SessionFactory sessionFactory;
	public SupplierDaoImpl(SessionFactory sessionFactory2)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public boolean saveorupdate(Supplier supplier) {
		// TODO Auto-generated method stub

		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		return true;
	}

	@Override
	public boolean delete(Supplier supplier) {
		// TODO Auto-generated method stub

		sessionFactory.getCurrentSession().delete(supplier);
		return true;
	}

	@Override
	public Supplier getSupplier(String supId) {
		// TODO Auto-generated method stub

		String sup="From Supplier where SupId='"+supId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(sup);
		List<Supplier> suplist=(List<Supplier>)q.list();
		if(suplist==null||suplist.isEmpty()) {
		return null;
	}
		else
		{
			return suplist.get(0);
		
		}
	}

	@Override
	public List<Supplier> list() {
		// TODO Auto-generated method stub

		List<Supplier> list=(List<Supplier>)
		sessionFactory.getCurrentSession().createCriteria(Supplier.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}

}
