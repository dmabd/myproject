package com.shop.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.shop.bean.Product;
import com.shop.dao.ProductDao;

public class ProductDaoImpl implements ProductDao{

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Product> queryProductOnSale() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Product where state=1").list();
	}

	@Override
	public List<Product> queryProductBySearch(String search) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product where state = 1 and name like ? or type like ?");
		query.setString(0, "%"+search+"%");
		query.setString(1,"%"+search+"%");
		return query.list();
	}

	@Override
	public Product queryProductById(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		
		return  (Product) session.createQuery("from Product where id ="+id.toString()).list().get(0);
	}

	@Override
	public List<Product> queryProductsByUserId(int userId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Product where userId=?and state=1");
		q.setString(0, userId+"");
		return q.list();
		

	}

	@Override
	public List<Product> querynotonsellProductsByUserId(int userId) {
		Session session = sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Product where userId=?and state=0");
		q.setString(0, userId+"");
		return q.list();
	}
}
