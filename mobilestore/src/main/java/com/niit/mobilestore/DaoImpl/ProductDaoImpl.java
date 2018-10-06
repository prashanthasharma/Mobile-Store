package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.CategoryDao;
import com.niit.mobilestore.Dao.ProductDao;
import com.niit.mobilestore.Model.Category;
import com.niit.mobilestore.Model.Product;

@Repository("productDao")
@Transactional
@EnableTransactionManagement
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SessionFactory sessionFactory;
	public ProductDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}


	@Override
	public boolean saveorupdate(Product product) {
		// TODO Auto-generated method stub

		sessionFactory.getCurrentSession().saveOrUpdate(product);
		return true;
	}

	@Override
	public boolean delete(Product product) {
		// TODO Auto-generated method stub

		sessionFactory.getCurrentSession().delete(product);
		return true;
	}

	@Override
	public Product getProduct(String ProdId) {
		// TODO Auto-generated method stub 
		String prod="From Product where ProdId='"+ProdId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(prod);
		List<Product> prolist=(List<Product>)q.list();
		if(prolist==null||prolist.isEmpty()) {
		return null;
	}
		else
		{
			return prolist.get(0);
		
		}
	}

	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub

		List<Product> list=(List<Product>)
		sessionFactory.getCurrentSession().createCriteria(Product.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}


	@Override
	public List<Product> getProductByCategory(String CatId) {
		String prod="From Product where CatId='"+CatId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(prod);
		List<Product> prodlist=(List<Product>)q.list();
		if(prodlist==null||prodlist.isEmpty()) {
		return null;
	}
		else
		{
			return prodlist;
		
		}
	}


	@Override
	public List<Product> getProductBySupplier(String SupId) {
		String prod="From Product where SupId='"+SupId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(prod);
		List<Product> prodlist=(List<Product>)q.list();
		if(prodlist==null||prodlist.isEmpty()) {
		return null;
	}
		else
		{
			return prodlist;
		
		}


	

 }
}
