package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.model.Product;
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
@Autowired
private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		//HQL - Hibernate query Language
		Query query=session.createQuery("from Product");//Select * from Product
		return query.list(); //List of Product objects
	}
	public Product getProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class, id); //select * from product where id=1
		return product;
	}
	public void deleteProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		//select * from product where id=?
		Product product=(Product)session.get(Product.class, id);
		//delete from product where id=?
		session.delete(product);
	}
	public void UpdateProduct(Product product)
	{
		sessionFactory.getCurrentSession().update(product);
	}
	
	public void saveOrUpdateProduct(Product product)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
}

