package com.niit.mobilestore.Config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.mobilestore.Dao.AuthenticationDao;
import com.niit.mobilestore.Dao.BillingDao;
import com.niit.mobilestore.Dao.CardDao;
import com.niit.mobilestore.Dao.CartDao;
import com.niit.mobilestore.Dao.CartItemsDao;
import com.niit.mobilestore.Dao.CategoryDao;
import com.niit.mobilestore.Dao.OrderDao;
import com.niit.mobilestore.Dao.OrderItemsDao;
import com.niit.mobilestore.Dao.PayDao;
import com.niit.mobilestore.Dao.ProductDao;
import com.niit.mobilestore.Dao.ShippingDao;
import com.niit.mobilestore.Dao.SupplierDao;
import com.niit.mobilestore.Dao.UserDao;
import com.niit.mobilestore.DaoImpl.AuthenticationDaoImpl;
import com.niit.mobilestore.DaoImpl.BillingDaoImpl;
import com.niit.mobilestore.DaoImpl.CardDaoImpl;
import com.niit.mobilestore.DaoImpl.CartDaoImpl;
import com.niit.mobilestore.DaoImpl.CartItemsDaoImpl;
import com.niit.mobilestore.DaoImpl.CategoryDaoImpl;
import com.niit.mobilestore.DaoImpl.OrderDaoImpl;
import com.niit.mobilestore.DaoImpl.OrderItemsDaoImpl;
import com.niit.mobilestore.DaoImpl.PayDaoImpl;
import com.niit.mobilestore.DaoImpl.ProductDaoImpl;
import com.niit.mobilestore.DaoImpl.ShippingDaoImpl;
import com.niit.mobilestore.DaoImpl.SupplierDaoImpl;
import com.niit.mobilestore.DaoImpl.UserDaoImpl;
import com.niit.mobilestore.Model.Authentication;
import com.niit.mobilestore.Model.Billing;
import com.niit.mobilestore.Model.Card;
import com.niit.mobilestore.Model.Cart;
import com.niit.mobilestore.Model.CartItems;
import com.niit.mobilestore.Model.Category;
import com.niit.mobilestore.Model.Order;
import com.niit.mobilestore.Model.OrderItems;
import com.niit.mobilestore.Model.Pay;
import com.niit.mobilestore.Model.Product;
import com.niit.mobilestore.Model.Shipping;
import com.niit.mobilestore.Model.Supplier;
import com.niit.mobilestore.Model.User;

@Configuration
@ComponentScan("com.niit.*")
@EnableTransactionManagement

public class ApplicationContext 
{
	@Bean("dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test/mobilestore");
		dataSource.setUsername("prashanth");
		dataSource.setPassword("123456789");
		return dataSource;
}
	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.connection.pool_size", "10");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		return properties;
	}
	
	@Autowired
	@Bean("sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Authentication.class);
		sessionBuilder.addAnnotatedClass(Billing.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		sessionBuilder.addAnnotatedClass(CartItems.class);
		sessionBuilder.addAnnotatedClass(Order.class);
		sessionBuilder.addAnnotatedClass(OrderItems.class);
		sessionBuilder.addAnnotatedClass(Shipping.class);
		sessionBuilder.addAnnotatedClass(Pay.class);
		sessionBuilder.addAnnotatedClass(Card.class);

		return sessionBuilder.buildSessionFactory();
	}
	
	@Autowired
	@Bean("transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

	@Autowired
	@Bean("categoryDao")
	public CategoryDao getCategoryDao(SessionFactory sessionFactory) {
		return new CategoryDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("productDao")
	public ProductDao getProductDao(SessionFactory sessionFactory) {
		return new ProductDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("supplierDao")
	public SupplierDao getSupplierDao(SessionFactory sessionFactory) {
		return new SupplierDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("userDao")
	public UserDao getUserDao(SessionFactory sessionFactory) {
		return new UserDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("authenticationDao")
	public AuthenticationDao getAuthenticationDao(SessionFactory sessionFactory) {
		return new AuthenticationDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("billingDao")
	public BillingDao getBillingDao(SessionFactory sessionFactory) {
		return new BillingDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("cartDao")
	public CartDao getCartDao(SessionFactory sessionFactory) {
		return new CartDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("cartItemsDao")
	public CartItemsDao getCartItemsDao(SessionFactory sessionFactory) {
		return new CartItemsDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("orderDao")
	public OrderDao getOrderDao(SessionFactory sessionFactory) {
		return new OrderDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("orderItemsDao")
	public OrderItemsDao getOrderItemsDao(SessionFactory sessionFactory) {
		return new OrderItemsDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("shippingDao")
	public ShippingDao getShippingDao(SessionFactory sessionFactory) {
		return new ShippingDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("PayDao")
	public PayDao getPayDao(SessionFactory sessionFactory) {
		return new PayDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean("CardDao")
	public CardDao getCardDao(SessionFactory sessionFactory) {
		return new CardDaoImpl(sessionFactory);
	}
}
