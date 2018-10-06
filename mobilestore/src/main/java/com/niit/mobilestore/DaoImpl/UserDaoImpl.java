package com.niit.mobilestore.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mobilestore.Dao.UserDao;
import com.niit.mobilestore.Model.Authentication;
import com.niit.mobilestore.Model.Billing;
import com.niit.mobilestore.Model.User;

@Repository("userDao")
@Transactional
@EnableTransactionManagement
public class UserDaoImpl implements UserDao{

	@Autowired
	SessionFactory sessionFactory;
	public UserDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	@Override
	public boolean saveorupdate(User user) {
		// TODO Auto-generated method stub
				Authentication auth=new Authentication();
				Billing billing=new Billing();
				billing.setCity(user.getAddress());
				user.setBilling(billing);
				billing.setAddress(user.getAddress());
				billing.setBillName(user.getName());
				billing.setPhone(user.getPhNo());
				billing.setUser(user);
				auth.setUserName(user.getEmailId());
				sessionFactory.getCurrentSession().saveOrUpdate(auth);
				sessionFactory.getCurrentSession().saveOrUpdate(billing);
				sessionFactory.getCurrentSession().saveOrUpdate(user);
				sessionFactory.getCurrentSession().saveOrUpdate(user.getBilling());
				sessionFactory.getCurrentSession().saveOrUpdate(user.getCart());
				return true;

	}

	@Override
	public boolean delete(User user) {
		// TODO Auto-generated method stub

		sessionFactory.getCurrentSession().delete(user);
		return true;
	}

	@Override
	public User getUser(String userId) {
		// TODO Auto-generated method stub

		String user="From User where UserId='"+userId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(user);
		List<User> userlist=(List<User>)q.list();
		if(userlist==null||userlist.isEmpty()) {
		return null;
	}
		else
		{
			return userlist.get(0);
		
		}
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub

		List<User> list=(List<User>)
		sessionFactory.getCurrentSession().createCriteria(User.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}
	@Override
	public User isValid(String umail, String pwd) {
		String u1="from User where EmailId='"+umail+"'and Password='"+pwd+"'";
		Query q1=sessionFactory.getCurrentSession().createQuery(u1);
		List<User> list=(List<User>) q1.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		else
		{
			return list.get(0);
		}
	}
	@Override
	public User getEmail(String currusername) {
		String u1="from User where EmailId='"+currusername+"'";
		Query q1=sessionFactory.getCurrentSession().createQuery(u1);
		List<User> list=(List<User>) q1.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		else
		{
			return list.get(0);
		}

	}
}
