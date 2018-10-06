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
import com.niit.mobilestore.Dao.CardDao;
import com.niit.mobilestore.Model.Authentication;
import com.niit.mobilestore.Model.Card;

@Repository("CardDao")
@Transactional
@EnableTransactionManagement
public class CardDaoImpl implements CardDao{

	@Autowired
	SessionFactory sessionFactory;
	public CardDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public boolean saveorupdate(Card card) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(card);
		return true;
	}

	@Override
	public boolean delete(Card card) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(card);
		return true;
	}

	@Override
	public Card getCard(String cardNumber) {
		// TODO Auto-generated method stub
		String card="From Card where cardNumber='"+cardNumber+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(card);
		List<Card> cardlist=(List<Card>) q.list();
		if(cardlist==null||cardlist.isEmpty())
		{
		return null;

		}
		else
		{
			return cardlist.get(0);
		
		}
	}

	@Override
	public List<Card> list() {
		// TODO Auto-generated method stub
		List<Card> list=(List<Card>)
				sessionFactory.getCurrentSession().createCriteria(Authentication.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

}
