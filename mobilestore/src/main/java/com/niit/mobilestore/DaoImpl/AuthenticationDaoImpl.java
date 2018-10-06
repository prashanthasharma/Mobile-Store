package com.niit.mobilestore.DaoImpl;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.AuthenticationDao;
import com.niit.mobilestore.Model.Authentication;

@Repository("authenticationDao")
@Transactional
@EnableTransactionManagement
public class AuthenticationDaoImpl implements AuthenticationDao{


	@Autowired
	SessionFactory sessionFactory;
	public AuthenticationDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public boolean saveorupdate(Authentication authentication) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(authentication);
		return true;
	}

	@Override
	public boolean delete(Authentication authentication) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(authentication);
		return true;
	}

	@Override
	public Authentication getAuthentication(String roleId) {
		// TODO Auto-generated method stub

		String aut="From Authentication where roleId='"+roleId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(aut);
		List<Authentication> autlist=(List<Authentication>) q.list();
		if(autlist==null||autlist.isEmpty())
		{
		return null;

		}
		else
		{
			return autlist.get(0);
		
		}
	}


	
	@Override
	public List<Authentication> list() {
		// TODO Auto-generated method stub
		List<Authentication> list=(List<Authentication>)
				sessionFactory.getCurrentSession().createCriteria(Authentication.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

}
