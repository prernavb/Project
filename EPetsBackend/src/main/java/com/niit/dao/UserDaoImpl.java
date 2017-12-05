package com.niit.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.User;
@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	public void registerCustomer(User customer) {
		Session session=sessionFactory.getCurrentSession();
		
		/*Cart cart=new Cart();
		customer.setCart(cart);
		cart.setCustomer(customer);*/
		
		session.save(customer);
	}
	public boolean isEmailValid(String email) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer where email=?");
		query.setString(0, email);	
		User customer=(User)query.uniqueResult();
		if(customer!=null)//duplicate email address, invalid
			return false;
		else
			return true; //if customer = null , unique email address, valid
	}
	public boolean isUsernameValid(String username) {
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class, username);//select * from user where username=?
		if(user!=null)
			return false; //duplicate username, invalid
		else
			return true;//unique username, valid username
	}
	public void registerUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

}
