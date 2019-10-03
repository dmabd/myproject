package com.shop.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.shop.bean.User;
import com.shop.dao.UserDao;

public class UserDaoImpl implements UserDao{

	private SessionFactory sessionFactory;
	
	@Override
	public User queryUserByUsername(String username) {
		//通过会话工厂或得当前会话对象
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User where username=?");
		query.setParameter(0, username);
		List<User> users = (List<User>)query.list();
		if(users.size()==0)return null;
		return users.get(0);
	}
	

	@Override
	public boolean addUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Serializable serializable = session.save(user);
		tr.commit();
		if(serializable!=null)return true;
		return false;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
