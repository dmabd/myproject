package com.shop.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.shop.bean.Orders;
import com.shop.bean.Product;
import com.shop.bean.SellProductVo;
import com.shop.dao.OrdersDao;

public class OrdersDaoImpl implements OrdersDao{

	private SessionFactory sessionFactory;
	
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}



	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Override
	public boolean addOrderByOrder(Orders order) {
		Session session = sessionFactory.getCurrentSession();
		Serializable serializable = session.save(order);
		if(serializable==null){
			return false;}
		return true;
	}



	@Override
	public List<SellProductVo> queryOrders(int userId, String state) {
		Session session = sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Orders o, Product p where o.productId=p.id and o.userId=?and o.state=? ");
		q.setString(0, userId+"");
		q.setString(1, state);
		List<SellProductVo>list=new ArrayList<SellProductVo>();
		List<Object[]> l=q.list();		
		for(Object[] object:l){
			SellProductVo spv=new SellProductVo();
			for(Object obj:object){
				if(obj.getClass().equals(Product.class)){
					Product pro=(Product) obj;
					spv.setName(pro.getName());
					spv.setId(pro.getId());
					spv.setPicUrl(pro.getPicUrl());
					spv.setPerPrice(pro.getPrice());
					
				}else{
					Orders sp=(Orders)obj;
					spv.setId(sp.getId());
					spv.setOrderId(sp.getOrderId());
					spv.setSaleDate(sp.getSaleDate());
					spv.setTotalPrice(sp.getPrice());
					spv.setState(sp.getState());
					
					
				}
			}
			list.add(spv);
		}
		return list;
	}





}
